.class public final synthetic Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNPreinstallableFolderShortcutsAdapter$4IylazTprF4kNWMFt1-iu1VitV0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNPreinstallableFolderShortcutsAdapter$4IylazTprF4kNWMFt1-iu1VitV0;->f$0:Lcom/miui/home/launcher/ShortcutIcon;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNPreinstallableFolderShortcutsAdapter$4IylazTprF4kNWMFt1-iu1VitV0;->f$0:Lcom/miui/home/launcher/ShortcutIcon;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNPreinstallableFolderShortcutsAdapter;->lambda$loadDrawable$0(Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
