.class public final synthetic Lcom/mi/globallauncher/-$$Lambda$BranchClientImplement$rd7NvgtI4I2AG-3opDO4JQguuW4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/mi/globallauncher/view/ReversibleTagGroup$OnTagClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

.field private final synthetic f$1:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/-$$Lambda$BranchClientImplement$rd7NvgtI4I2AG-3opDO4JQguuW4;->f$0:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    iput-object p2, p0, Lcom/mi/globallauncher/-$$Lambda$BranchClientImplement$rd7NvgtI4I2AG-3opDO4JQguuW4;->f$1:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    return-void
.end method


# virtual methods
.method public final onTagClick(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/globallauncher/-$$Lambda$BranchClientImplement$rd7NvgtI4I2AG-3opDO4JQguuW4;->f$0:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    iget-object v1, p0, Lcom/mi/globallauncher/-$$Lambda$BranchClientImplement$rd7NvgtI4I2AG-3opDO4JQguuW4;->f$1:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-static {v0, v1, p1}, Lcom/mi/globallauncher/BranchClientImplement;->lambda$onBindViewHolder$0(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;Ljava/lang/String;)V

    return-void
.end method
