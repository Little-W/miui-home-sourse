.class final Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "BaseUninstallDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->init(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $allShortcutInfos$inlined:Ljava/util/List;

.field final synthetic $context$inlined:Landroid/content/Context;

.field final synthetic $mReportButton$inlined:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$$inlined$apply$lambda$1;->$allShortcutInfos$inlined:Ljava/util/List;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$$inlined$apply$lambda$1;->$mReportButton$inlined:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$$inlined$apply$lambda$1;->$context$inlined:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$$inlined$apply$lambda$1;->$context$inlined:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$$inlined$apply$lambda$1;->$allShortcutInfos$inlined:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {p1, p0}, Lcom/miui/home/launcher/util/RiskAppReporter;->launch(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method
