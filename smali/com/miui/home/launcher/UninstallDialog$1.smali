.class Lcom/miui/home/launcher/UninstallDialog$1;
.super Ljava/lang/Object;
.source "UninstallDialog.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/UninstallDialog;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/UninstallDialog;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/UninstallDialog;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$1;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 82
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$1;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {v0}, Lcom/miui/home/launcher/UninstallDialog;->access$000(Lcom/miui/home/launcher/UninstallDialog;)Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    iget-object v3, p0, Lcom/miui/home/launcher/UninstallDialog$1;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {v3}, Lcom/miui/home/launcher/UninstallDialog;->access$000(Lcom/miui/home/launcher/UninstallDialog;)Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->setTranslationX(F)V

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog$1;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {v0}, Lcom/miui/home/launcher/UninstallDialog;->access$000(Lcom/miui/home/launcher/UninstallDialog;)Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    sub-float/2addr p1, v2

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog$1;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {v1}, Lcom/miui/home/launcher/UninstallDialog;->access$000(Lcom/miui/home/launcher/UninstallDialog;)Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    mul-float/2addr p1, v3

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->setTranslationY(F)V

    return-void
.end method
