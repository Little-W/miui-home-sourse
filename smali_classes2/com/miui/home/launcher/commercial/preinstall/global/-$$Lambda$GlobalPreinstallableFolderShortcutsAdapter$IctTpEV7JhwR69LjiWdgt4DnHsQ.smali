.class public final synthetic Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalPreinstallableFolderShortcutsAdapter$IctTpEV7JhwR69LjiWdgt4DnHsQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ShortcutInfo;

.field private final synthetic f$1:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalPreinstallableFolderShortcutsAdapter$IctTpEV7JhwR69LjiWdgt4DnHsQ;->f$0:Lcom/miui/home/launcher/ShortcutInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalPreinstallableFolderShortcutsAdapter$IctTpEV7JhwR69LjiWdgt4DnHsQ;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalPreinstallableFolderShortcutsAdapter$IctTpEV7JhwR69LjiWdgt4DnHsQ;->f$0:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalPreinstallableFolderShortcutsAdapter$IctTpEV7JhwR69LjiWdgt4DnHsQ;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->lambda$loadDrawable$1(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
