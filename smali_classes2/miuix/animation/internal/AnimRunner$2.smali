.class Lmiuix/animation/internal/AnimRunner$2;
.super Ljava/lang/Object;
.source "AnimRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/internal/AnimRunner;->run(Lmiuix/animation/internal/TransitionInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/animation/internal/AnimRunner;

.field final synthetic val$info:Lmiuix/animation/internal/TransitionInfo;


# direct methods
.method constructor <init>(Lmiuix/animation/internal/AnimRunner;Lmiuix/animation/internal/TransitionInfo;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lmiuix/animation/internal/AnimRunner$2;->this$0:Lmiuix/animation/internal/AnimRunner;

    iput-object p2, p0, Lmiuix/animation/internal/AnimRunner$2;->val$info:Lmiuix/animation/internal/TransitionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 187
    iget-object v0, p0, Lmiuix/animation/internal/AnimRunner$2;->val$info:Lmiuix/animation/internal/TransitionInfo;

    iget-object v0, v0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v1, p0, Lmiuix/animation/internal/AnimRunner$2;->val$info:Lmiuix/animation/internal/TransitionInfo;

    invoke-virtual {v0, v1}, Lmiuix/animation/internal/AnimManager;->startAnim(Lmiuix/animation/internal/TransitionInfo;)V

    return-void
.end method
