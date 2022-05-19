.class Lcom/miui/home/launcher/Launcher$12;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 2176
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$12;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 2179
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2180
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$12;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DefaultScreenPreviewView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->setAlpha(F)V

    .line 2181
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$12;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DefaultScreenPreviewView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$12;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$2000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DefaultScreenPreviewView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->setTranslationY(F)V

    .line 2182
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$12;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$1400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->setAlpha(F)V

    .line 2183
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$12;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/EditingEntryThumbnailView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setAlpha(F)V

    return-void
.end method
