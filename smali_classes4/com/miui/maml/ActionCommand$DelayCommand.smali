.class Lcom/miui/maml/ActionCommand$DelayCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayCommand"
.end annotation


# instance fields
.field private mCmd:Ljava/lang/Runnable;

.field private mCommand:Lcom/miui/maml/ActionCommand;

.field private mDelay:J


# direct methods
.method public constructor <init>(Lcom/miui/maml/ActionCommand;J)V
    .locals 1

    .line 1384
    invoke-virtual {p1}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 1385
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$DelayCommand;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 1386
    iput-wide p2, p0, Lcom/miui/maml/ActionCommand$DelayCommand;->mDelay:J

    .line 1387
    new-instance p1, Lcom/miui/maml/ActionCommand$DelayCommand$1;

    invoke-direct {p1, p0}, Lcom/miui/maml/ActionCommand$DelayCommand$1;-><init>(Lcom/miui/maml/ActionCommand$DelayCommand;)V

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$DelayCommand;->mCmd:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$400(Lcom/miui/maml/ActionCommand$DelayCommand;)Lcom/miui/maml/ActionCommand;
    .locals 0

    .line 1378
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$DelayCommand;->mCommand:Lcom/miui/maml/ActionCommand;

    return-object p0
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .line 1406
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$DelayCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$DelayCommand;->mCmd:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/miui/maml/ActionCommand$DelayCommand;->mDelay:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/maml/ScreenElementRoot;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public finish()V
    .locals 1

    .line 1401
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$DelayCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/maml/ActionCommand$DelayCommand;->mCmd:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/miui/maml/ScreenElementRoot;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init()V
    .locals 0

    .line 1396
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$DelayCommand;->mCommand:Lcom/miui/maml/ActionCommand;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->init()V

    return-void
.end method
