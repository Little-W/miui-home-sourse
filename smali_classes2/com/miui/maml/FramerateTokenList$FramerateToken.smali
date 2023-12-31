.class public Lcom/miui/maml/FramerateTokenList$FramerateToken;
.super Ljava/lang/Object;
.source "FramerateTokenList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/FramerateTokenList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FramerateToken"
.end annotation


# instance fields
.field public mFramerate:F

.field public mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/maml/FramerateTokenList;


# direct methods
.method public constructor <init>(Lcom/miui/maml/FramerateTokenList;Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->this$0:Lcom/miui/maml/FramerateTokenList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFramerate()F
    .locals 0

    .line 23
    iget p0, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    return p0
.end method

.method public requestFramerate(F)V
    .locals 2

    .line 27
    iget v0, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->this$0:Lcom/miui/maml/FramerateTokenList;

    invoke-static {v0}, Lcom/miui/maml/FramerateTokenList;->access$000(Lcom/miui/maml/FramerateTokenList;)Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->this$0:Lcom/miui/maml/FramerateTokenList;

    invoke-static {v0}, Lcom/miui/maml/FramerateTokenList;->access$000(Lcom/miui/maml/FramerateTokenList;)Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;

    move-result-object v0

    iget v1, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    invoke-interface {v0, v1, p1}, Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;->onFrameRateChage(FF)V

    .line 31
    :cond_0
    iput p1, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    .line 32
    iget-object p0, p0, Lcom/miui/maml/FramerateTokenList$FramerateToken;->this$0:Lcom/miui/maml/FramerateTokenList;

    invoke-static {p0}, Lcom/miui/maml/FramerateTokenList;->access$100(Lcom/miui/maml/FramerateTokenList;)V

    :cond_1
    return-void
.end method
