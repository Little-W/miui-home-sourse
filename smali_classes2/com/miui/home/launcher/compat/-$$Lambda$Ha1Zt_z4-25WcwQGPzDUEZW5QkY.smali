.class public final synthetic Lcom/miui/home/launcher/compat/-$$Lambda$Ha1Zt_z4-25WcwQGPzDUEZW5QkY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;


# instance fields
.field private final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/-$$Lambda$Ha1Zt_z4-25WcwQGPzDUEZW5QkY;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/compat/-$$Lambda$Ha1Zt_z4-25WcwQGPzDUEZW5QkY;->f$0:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
