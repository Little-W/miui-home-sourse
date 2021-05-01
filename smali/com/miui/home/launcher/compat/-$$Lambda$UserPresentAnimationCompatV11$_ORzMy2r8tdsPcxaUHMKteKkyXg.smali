.class public final synthetic Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$_ORzMy2r8tdsPcxaUHMKteKkyXg;
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

    iput-object p1, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$_ORzMy2r8tdsPcxaUHMKteKkyXg;->f$0:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p2, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$_ORzMy2r8tdsPcxaUHMKteKkyXg;->f$1:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p3, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$_ORzMy2r8tdsPcxaUHMKteKkyXg;->f$2:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p4, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$_ORzMy2r8tdsPcxaUHMKteKkyXg;->f$3:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$_ORzMy2r8tdsPcxaUHMKteKkyXg;->f$0:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$_ORzMy2r8tdsPcxaUHMKteKkyXg;->f$1:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$_ORzMy2r8tdsPcxaUHMKteKkyXg;->f$2:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$_ORzMy2r8tdsPcxaUHMKteKkyXg;->f$3:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV11;->lambda$showUserPresentAnimation$372(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    return-void
.end method
