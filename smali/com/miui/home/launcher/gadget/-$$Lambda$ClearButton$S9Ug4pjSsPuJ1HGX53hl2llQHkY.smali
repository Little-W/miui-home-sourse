.class public final synthetic Lcom/miui/home/launcher/gadget/-$$Lambda$ClearButton$S9Ug4pjSsPuJ1HGX53hl2llQHkY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/gadget/ClearButton;

.field private final synthetic f$1:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/gadget/ClearButton;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ClearButton$S9Ug4pjSsPuJ1HGX53hl2llQHkY;->f$0:Lcom/miui/home/launcher/gadget/ClearButton;

    iput-object p2, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ClearButton$S9Ug4pjSsPuJ1HGX53hl2llQHkY;->f$1:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ClearButton$S9Ug4pjSsPuJ1HGX53hl2llQHkY;->f$0:Lcom/miui/home/launcher/gadget/ClearButton;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$ClearButton$S9Ug4pjSsPuJ1HGX53hl2llQHkY;->f$1:Landroid/animation/Animator$AnimatorListener;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/gadget/ClearButton;->lambda$refreshMemoryUsed$1(Lcom/miui/home/launcher/gadget/ClearButton;Landroid/animation/Animator$AnimatorListener;Ljava/lang/Integer;)V

    return-void
.end method
