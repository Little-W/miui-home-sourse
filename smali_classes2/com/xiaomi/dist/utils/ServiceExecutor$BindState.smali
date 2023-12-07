.class Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/utils/ServiceExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BindState"
.end annotation


# instance fields
.field private final mCondition:Ljava/util/concurrent/locks/Condition;

.field private mIsBinding:Z

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->mCondition:Ljava/util/concurrent/locks/Condition;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->mIsBinding:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->mIsBinding:Z

    return p0
.end method

.method static synthetic access$102(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->mIsBinding:Z

    return p1
.end method

.method static synthetic access$500(Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor$BindState;->mCondition:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method
