.class public final synthetic Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAlphabeticalAppsList$mLIAe4Cx8fJuvqdDeZ-WbBcZuco;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAlphabeticalAppsList$mLIAe4Cx8fJuvqdDeZ-WbBcZuco;->f$0:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;

    return-void
.end method


# virtual methods
.method public final adapterItems()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAlphabeticalAppsList$mLIAe4Cx8fJuvqdDeZ-WbBcZuco;->f$0:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lambda$appendAutoSuggestResult$0(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method