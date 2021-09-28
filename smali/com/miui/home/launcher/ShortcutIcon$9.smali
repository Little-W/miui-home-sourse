.class Lcom/miui/home/launcher/ShortcutIcon$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ShortcutIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ShortcutIcon;->showFolderCreateBackground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$9;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 459
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$9;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$9;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
