.class public final synthetic Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$3vd0Vv4gTr9pbzXV7ws-_Oojexg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method public synthetic constructor <init>(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$3vd0Vv4gTr9pbzXV7ws-_Oojexg;->f$0:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV11$3vd0Vv4gTr9pbzXV7ws-_Oojexg;->f$0:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV11;->lambda$showUserPresentAnimation$373(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    return-void
.end method
