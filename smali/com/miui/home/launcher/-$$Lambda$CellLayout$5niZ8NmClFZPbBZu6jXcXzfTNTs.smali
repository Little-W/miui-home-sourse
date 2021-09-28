.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$CellLayout$5niZ8NmClFZPbBZu6jXcXzfTNTs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/CellLayout;

.field private final synthetic f$1:Landroid/view/Window;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/CellLayout;Landroid/view/Window;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$5niZ8NmClFZPbBZu6jXcXzfTNTs;->f$0:Lcom/miui/home/launcher/CellLayout;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$5niZ8NmClFZPbBZu6jXcXzfTNTs;->f$1:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$5niZ8NmClFZPbBZu6jXcXzfTNTs;->f$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$5niZ8NmClFZPbBZu6jXcXzfTNTs;->f$1:Landroid/view/Window;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/CellLayout;->lambda$setAndDoEditModeAnimation$6(Lcom/miui/home/launcher/CellLayout;Landroid/view/Window;Landroid/animation/ValueAnimator;)V

    return-void
.end method
