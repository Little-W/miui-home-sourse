.class Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconInfo;
.super Ljava/lang/Object;
.source "FolderPreviewIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderPreviewIconAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreviewIconInfo"
.end annotation


# instance fields
.field drawable:Landroid/graphics/drawable/Drawable;

.field shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconInfo;->drawable:Landroid/graphics/drawable/Drawable;

    .line 161
    iput-object p2, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$PreviewIconInfo;->shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method
