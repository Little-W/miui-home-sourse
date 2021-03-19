.class final Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$2;
.super Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;
.source "AlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->asEmptySearch(I)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public areItemsTheSame(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;)Z
    .locals 1

    .line 140
    iget v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem$2;->viewType:I

    iget p1, p1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
