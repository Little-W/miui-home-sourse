.class Lcom/miui/home/launcher/UninstallDialog$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UninstallDialog.java"


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

    .line 88
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$2;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$2;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {p1}, Lcom/miui/home/launcher/UninstallDialog;->access$000(Lcom/miui/home/launcher/UninstallDialog;)Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->setTranslationX(F)V

    .line 92
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$2;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {p1}, Lcom/miui/home/launcher/UninstallDialog;->access$000(Lcom/miui/home/launcher/UninstallDialog;)Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->setTranslationY(F)V

    return-void
.end method
