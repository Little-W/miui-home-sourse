.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$DragView$b26XrHdgYbb25Q4xrkT7ar45nD8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field private final synthetic f$0:Ljava8/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava8/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$DragView$b26XrHdgYbb25Q4xrkT7ar45nD8;->f$0:Ljava8/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$DragView$b26XrHdgYbb25Q4xrkT7ar45nD8;->f$0:Ljava8/util/function/Consumer;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/home/launcher/DragView;->lambda$createSpringAnimation$3(Ljava8/util/function/Consumer;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method
