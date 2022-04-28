.class Lcom/miui/maml/elements/AnimatedScreenElement$3;
.super Ljava/lang/Object;
.source "AnimatedScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/AnimatedScreenElement;->folmeFromToImpl(Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

.field final synthetic val$config:Lmiuix/animation/base/AnimConfig;

.field final synthetic val$fromState:Lmiuix/animation/controller/AnimState;

.field final synthetic val$toState:Lmiuix/animation/controller/AnimState;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/AnimatedScreenElement;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 914
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->val$fromState:Lmiuix/animation/controller/AnimState;

    iput-object p3, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->val$toState:Lmiuix/animation/controller/AnimState;

    iput-object p4, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->val$config:Lmiuix/animation/base/AnimConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 918
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->this$0:Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->val$fromState:Lmiuix/animation/controller/AnimState;

    iget-object v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->val$toState:Lmiuix/animation/controller/AnimState;

    const/4 v3, 0x1

    new-array v3, v3, [Lmiuix/animation/base/AnimConfig;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/maml/elements/AnimatedScreenElement$3;->val$config:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 920
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
