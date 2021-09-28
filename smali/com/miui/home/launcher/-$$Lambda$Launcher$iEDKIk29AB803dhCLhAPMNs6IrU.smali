.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$iEDKIk29AB803dhCLhAPMNs6IrU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Lcom/miui/home/launcher/ShortcutInfo;

.field private final synthetic f$2:Z

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$iEDKIk29AB803dhCLhAPMNs6IrU;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$iEDKIk29AB803dhCLhAPMNs6IrU;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    iput-boolean p3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$iEDKIk29AB803dhCLhAPMNs6IrU;->f$2:Z

    iput-boolean p4, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$iEDKIk29AB803dhCLhAPMNs6IrU;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$iEDKIk29AB803dhCLhAPMNs6IrU;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$iEDKIk29AB803dhCLhAPMNs6IrU;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    iget-boolean v2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$iEDKIk29AB803dhCLhAPMNs6IrU;->f$2:Z

    iget-boolean v3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$iEDKIk29AB803dhCLhAPMNs6IrU;->f$3:Z

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/miui/home/launcher/Launcher;->lambda$addShortcut$49(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;ZZLandroid/view/View;)V

    return-void
.end method
