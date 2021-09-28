.class Lcom/miui/maml/elements/AnimatedScreenElement$1;
.super Ljava/lang/Object;
.source "AnimatedScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/AnimatedScreenElement;->folmeToImpl(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

.field final synthetic val$config:Lmiuix/animation/base/AnimConfig;

.field final synthetic val$toState:Lmiuix/animation/controller/AnimState;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/AnimatedScreenElement;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 885
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement$1;->this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement$1;->val$toState:Lmiuix/animation/controller/AnimState;

    iput-object p3, p0, Lcom/miui/maml/elements/AnimatedScreenElement$1;->val$config:Lmiuix/animation/base/AnimConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 889
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement$1;->this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement$1;->val$toState:Lmiuix/animation/controller/AnimState;

    const/4 v2, 0x1

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/maml/elements/AnimatedScreenElement$1;->val$config:Lmiuix/animation/base/AnimConfig;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 891
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
