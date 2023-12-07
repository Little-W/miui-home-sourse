.class Lcom/mi/globallauncher/BranchAdapterItemManager$5;
.super Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/BranchAdapterItemManager;->asLoadingDivider(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public areItemsTheSame(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;)Z
    .locals 0

    iget p0, p0, Lcom/mi/globallauncher/BranchAdapterItemManager$5;->viewType:I

    iget p1, p1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
