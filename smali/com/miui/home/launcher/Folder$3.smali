.class Lcom/miui/home/launcher/Folder$3;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Folder;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Folder;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/miui/home/launcher/Folder$3;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$3;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$400(Lcom/miui/home/launcher/Folder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method
