.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$CellLayout$ci8IiFw27ONTCVc7AUpMLhAB3N8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/CellLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$ci8IiFw27ONTCVc7AUpMLhAB3N8;->f$0:Lcom/miui/home/launcher/CellLayout;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$ci8IiFw27ONTCVc7AUpMLhAB3N8;->f$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/CellLayout;->lambda$doEditModeAnimation$5(Lcom/miui/home/launcher/CellLayout;F)V

    return-void
.end method
