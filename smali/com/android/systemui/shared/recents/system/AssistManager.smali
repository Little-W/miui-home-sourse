.class public Lcom/android/systemui/shared/recents/system/AssistManager;
.super Ljava/lang/Object;


# static fields
.field private static volatile INSTANCE:Lcom/android/systemui/shared/recents/system/AssistManager;


# instance fields
.field protected final mAssistUtils:Lcom/android/internal/app/AssistUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/shared/recents/system/AssistManager;
    .locals 2

    sget-object v0, Lcom/android/systemui/shared/recents/system/AssistManager;->INSTANCE:Lcom/android/systemui/shared/recents/system/AssistManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/systemui/shared/recents/system/AssistManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/shared/recents/system/AssistManager;->INSTANCE:Lcom/android/systemui/shared/recents/system/AssistManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/shared/recents/system/AssistManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/recents/system/AssistManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/shared/recents/system/AssistManager;->INSTANCE:Lcom/android/systemui/shared/recents/system/AssistManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/systemui/shared/recents/system/AssistManager;->INSTANCE:Lcom/android/systemui/shared/recents/system/AssistManager;

    return-object p0
.end method


# virtual methods
.method public getAssistInfoForUser(I)Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public isSupportGoogleAssist(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/AssistManager;->getAssistInfoForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.google.android.googlequicksearchbox"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
