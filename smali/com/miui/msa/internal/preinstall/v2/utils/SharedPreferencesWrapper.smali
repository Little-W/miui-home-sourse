.class public Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;
.super Ljava/lang/Object;
.source "SharedPreferencesWrapper.java"


# static fields
.field private static final DEFAULT_READ_WAIT_TIME_OUT:I = 0x3e8

.field private static final DEFAULT_WRITE_INTERVAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SharedPreferencesWrapper"


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSyncWriteTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$1;

    invoke-direct {v0, p0}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$1;-><init>(Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;)V

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->mSyncWriteTask:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->mSharedPref:Landroid/content/SharedPreferences;

    .line 31
    iget-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-static {}, Lcom/miui/msa/internal/preinstall/v2/utils/GlobalHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;)Landroid/content/SharedPreferences;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private getCommonReturnValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/FutureTask<",
            "TV;>;TV;)TV;"
        }
    .end annotation

    .line 180
    sget-object v0, Lcom/miui/msa/internal/preinstall/v2/utils/TaskRunner;->CACHED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x3e8

    .line 182
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "SharedPreferencesWrapper"

    const-string v1, "getCommonReturnValue exception"

    .line 184
    invoke-static {v0, v1, p1}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method private triggerDelayWrite()V
    .locals 4

    .line 48
    invoke-static {}, Lcom/miui/msa/internal/preinstall/v2/utils/GlobalHolder;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->mSyncWriteTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->triggerDelayWrite()V

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    .line 169
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$9;

    invoke-direct {v1, p0, p1}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$9;-><init>(Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/4 p1, 0x0

    .line 176
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->getCommonReturnValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$8;

    invoke-direct {v1, p0}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$8;-><init>(Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0, v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->getCommonReturnValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .line 137
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$7;-><init>(Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 144
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->getCommonReturnValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2

    .line 121
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$6;-><init>(Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;Ljava/lang/String;F)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 128
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->getCommonReturnValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2

    .line 89
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$4;-><init>(Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 96
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->getCommonReturnValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    .line 105
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$5;-><init>(Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;Ljava/lang/String;J)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 112
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->getCommonReturnValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$2;-><init>(Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 64
    invoke-direct {p0, v0, p2}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->getCommonReturnValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper$3;-><init>(Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;Ljava/lang/String;Ljava/util/Set;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 80
    invoke-direct {p0, v0, p2}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->getCommonReturnValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->triggerDelayWrite()V

    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->triggerDelayWrite()V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->triggerDelayWrite()V

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->triggerDelayWrite()V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->triggerDelayWrite()V

    return-void
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->triggerDelayWrite()V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/SharedPreferencesWrapper;->triggerDelayWrite()V

    return-void
.end method
