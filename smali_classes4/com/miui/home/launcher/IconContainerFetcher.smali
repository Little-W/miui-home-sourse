.class public Lcom/miui/home/launcher/IconContainerFetcher;
.super Ljava/lang/Object;
.source "IconContainerFetcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconContainerFromItemInfo(Lcom/miui/home/launcher/ItemIcon;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/home/launcher/ItemIcon;",
            ">(TT;)",
            "Ljava/util/Optional<",
            "Lcom/miui/home/launcher/IconContainer;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 12
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 15
    instance-of p1, p0, Lcom/miui/home/launcher/IconContainer;

    if-nez p1, :cond_1

    .line 16
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    .line 19
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 21
    :cond_2
    check-cast p0, Lcom/miui/home/launcher/IconContainer;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
