.class public Lcom/miui/maml/FramerateTokenList;
.super Ljava/lang/Object;
.source "FramerateTokenList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/FramerateTokenList$FramerateToken;,
        Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FramerateTokenList"


# instance fields
.field private mCurFramerate:F

.field private mFramerateChangeListener:Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/FramerateTokenList$FramerateToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 47
    iput-object p1, p0, Lcom/miui/maml/FramerateTokenList;->mFramerateChangeListener:Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/FramerateTokenList;)Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/miui/maml/FramerateTokenList;->mFramerateChangeListener:Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/maml/FramerateTokenList;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/miui/maml/FramerateTokenList;->onChange()V

    return-void
.end method

.method private onChange()V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 69
    iget v4, v3, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_0

    .line 70
    iget v2, v3, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    goto :goto_0

    .line 72
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iput v2, p0, Lcom/miui/maml/FramerateTokenList;->mCurFramerate:F

    const-string v0, "FramerateTokenList"

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame rate changed, current frame rate is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/maml/FramerateTokenList;->mCurFramerate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 72
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 80
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;
    .locals 3

    const-string v0, "FramerateTokenList"

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Lcom/miui/maml/FramerateTokenList$FramerateToken;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/FramerateTokenList$FramerateToken;-><init>(Lcom/miui/maml/FramerateTokenList;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    monitor-enter p1

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFramerate()F
    .locals 1

    .line 83
    iget v0, p0, Lcom/miui/maml/FramerateTokenList;->mCurFramerate:F

    return v0
.end method

.method public removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
