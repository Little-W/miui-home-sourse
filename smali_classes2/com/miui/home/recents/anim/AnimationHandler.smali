.class Lcom/miui/home/recents/anim/AnimationHandler;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallbackProvider;,
        Lcom/miui/home/recents/anim/AnimationHandler$FrameCallbackProvider16;,
        Lcom/miui/home/recents/anim/AnimationHandler$AnimationCallbackDispatcher;,
        Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallback;
    }
.end annotation


# static fields
.field public static final sAnimatorHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/miui/home/recents/anim/AnimationHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackDispatcher:Lcom/miui/home/recents/anim/AnimationHandler$AnimationCallbackDispatcher;

.field private final mDelayedCallbackStartTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mListDirty:Z

.field private mProvider:Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallbackProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/miui/home/recents/anim/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Lcom/miui/home/recents/anim/AnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/anim/AnimationHandler$AnimationCallbackDispatcher;-><init>(Lcom/miui/home/recents/anim/AnimationHandler;)V

    iput-object v0, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mCallbackDispatcher:Lcom/miui/home/recents/anim/AnimationHandler$AnimationCallbackDispatcher;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mListDirty:Z

    return-void
.end method

.method private cleanUpList()V
    .locals 2

    .line 142
    iget-boolean v0, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mListDirty:Z

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 144
    iget-object v1, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mListDirty:Z

    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/miui/home/recents/anim/AnimationHandler;
    .locals 2

    .line 58
    sget-object v0, Lcom/miui/home/recents/anim/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/miui/home/recents/anim/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/miui/home/recents/anim/AnimationHandler;

    invoke-direct {v1}, Lcom/miui/home/recents/anim/AnimationHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 61
    :cond_0
    sget-object v0, Lcom/miui/home/recents/anim/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/anim/AnimationHandler;

    return-object v0
.end method

.method private isCallbackDue(Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallback;J)Z
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 134
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p2, v2, p2

    if-gez p2, :cond_1

    .line 135
    iget-object p0, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addAnimationFrameCallback(Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallback;J)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/AnimationHandler;->getProvider()Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 92
    iget-object p0, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method doAnimationFrame(J)V
    .locals 5

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 111
    :goto_0
    iget-object v3, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 112
    iget-object v3, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallback;

    if-nez v3, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    invoke-direct {p0, v3, v0, v1}, Lcom/miui/home/recents/anim/AnimationHandler;->isCallbackDue(Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallback;J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    invoke-interface {v3, p1, p2}, Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallback;->doAnimationFrame(J)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/anim/AnimationHandler;->cleanUpList()V

    return-void
.end method

.method getProvider()Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallbackProvider;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mProvider:Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallbackProvider;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/miui/home/recents/anim/AnimationHandler$FrameCallbackProvider16;

    iget-object v1, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mCallbackDispatcher:Lcom/miui/home/recents/anim/AnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/AnimationHandler$FrameCallbackProvider16;-><init>(Lcom/miui/home/recents/anim/AnimationHandler$AnimationCallbackDispatcher;)V

    iput-object v0, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mProvider:Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallbackProvider;

    .line 77
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mProvider:Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallbackProvider;

    return-object p0
.end method

.method public removeCallback(Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallback;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/AnimationHandler;->mListDirty:Z

    :cond_0
    return-void
.end method
