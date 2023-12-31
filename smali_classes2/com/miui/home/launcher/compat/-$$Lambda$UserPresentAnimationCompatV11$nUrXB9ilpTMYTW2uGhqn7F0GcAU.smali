.class public final synthetic Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$nUrXB9ilpTMYTW2uGhqn7F0GcAU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final synthetic f$1:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final synthetic f$2:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final synthetic f$3:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method public synthetic constructor <init>(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$nUrXB9ilpTMYTW2uGhqn7F0GcAU;->f$0:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p2, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$nUrXB9ilpTMYTW2uGhqn7F0GcAU;->f$1:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p3, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$nUrXB9ilpTMYTW2uGhqn7F0GcAU;->f$2:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p4, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$nUrXB9ilpTMYTW2uGhqn7F0GcAU;->f$3:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$nUrXB9ilpTMYTW2uGhqn7F0GcAU;->f$0:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$nUrXB9ilpTMYTW2uGhqn7F0GcAU;->f$1:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$nUrXB9ilpTMYTW2uGhqn7F0GcAU;->f$2:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$nUrXB9ilpTMYTW2uGhqn7F0GcAU;->f$3:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0, v1, v2, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV11;->lambda$showUserPresentAnimation$0(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    return-void
.end method
