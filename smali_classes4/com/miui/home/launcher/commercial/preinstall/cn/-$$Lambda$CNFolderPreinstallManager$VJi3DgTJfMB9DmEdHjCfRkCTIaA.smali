.class public final synthetic Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$VJi3DgTJfMB9DmEdHjCfRkCTIaA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/RemoteShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/RemoteShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$VJi3DgTJfMB9DmEdHjCfRkCTIaA;->f$0:Lcom/miui/home/launcher/RemoteShortcutInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/-$$Lambda$CNFolderPreinstallManager$VJi3DgTJfMB9DmEdHjCfRkCTIaA;->f$0:Lcom/miui/home/launcher/RemoteShortcutInfo;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->lambda$updateAdapter$1(Lcom/miui/home/launcher/RemoteShortcutInfo;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
