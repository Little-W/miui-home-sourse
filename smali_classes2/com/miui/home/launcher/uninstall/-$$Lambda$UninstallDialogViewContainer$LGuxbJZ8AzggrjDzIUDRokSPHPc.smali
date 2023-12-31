.class public final synthetic Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallDialogViewContainer$LGuxbJZ8AzggrjDzIUDRokSPHPc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

.field private final synthetic f$1:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallDialogViewContainer$LGuxbJZ8AzggrjDzIUDRokSPHPc;->f$0:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallDialogViewContainer$LGuxbJZ8AzggrjDzIUDRokSPHPc;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallDialogViewContainer$LGuxbJZ8AzggrjDzIUDRokSPHPc;->f$0:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallDialogViewContainer$LGuxbJZ8AzggrjDzIUDRokSPHPc;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->lambda$bindShortcut$0$UninstallDialogViewContainer(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;)V

    return-void
.end method
