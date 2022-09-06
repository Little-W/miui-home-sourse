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
    .locals 1
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

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 15
    instance-of v0, p1, Lcom/miui/home/launcher/IconContainer;

    if-nez v0, :cond_1

    .line 16
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 19
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 21
    :cond_2
    check-cast p1, Lcom/miui/home/launcher/IconContainer;

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
