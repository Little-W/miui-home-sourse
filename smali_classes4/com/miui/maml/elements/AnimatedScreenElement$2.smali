.class Lcom/miui/maml/elements/AnimatedScreenElement$2;
.super Ljava/lang/Object;
.source "AnimatedScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/AnimatedScreenElement;->folmeSetToImpl(Lmiuix/animation/controller/AnimState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

.field final synthetic val$setToState:Lmiuix/animation/controller/AnimState;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/AnimatedScreenElement;Lmiuix/animation/controller/AnimState;)V
    .locals 0

    .line 903
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement$2;->this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement$2;->val$setToState:Lmiuix/animation/controller/AnimState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 907
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement$2;->this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement$2;->val$setToState:Lmiuix/animation/controller/AnimState;

    invoke-interface {v0, p0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 909
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
