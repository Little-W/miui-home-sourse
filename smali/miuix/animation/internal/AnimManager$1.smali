.class Lmiuix/animation/internal/AnimManager$1;
.super Ljava/lang/Object;
.source "AnimManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/internal/AnimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/animation/internal/AnimManager;


# direct methods
.method constructor <init>(Lmiuix/animation/internal/AnimManager;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lmiuix/animation/internal/AnimManager$1;->this$0:Lmiuix/animation/internal/AnimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 39
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager$1;->this$0:Lmiuix/animation/internal/AnimManager;

    iget-object v0, v0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    invoke-virtual {v0}, Lmiuix/animation/internal/TargetHandler;->update()V

    return-void
.end method
