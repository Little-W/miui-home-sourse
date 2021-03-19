.class public Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;
.super Ljava/lang/Object;
.source "CategoryInfoComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/home/launcher/allapps/category/CategoryInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/home/launcher/allapps/category/CategoryInfo;Lcom/miui/home/launcher/allapps/category/CategoryInfo;)I
    .locals 2

    .line 8
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getPriority()I

    move-result v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getPriority()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result p1

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 5
    check-cast p1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    check-cast p2, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;->compare(Lcom/miui/home/launcher/allapps/category/CategoryInfo;Lcom/miui/home/launcher/allapps/category/CategoryInfo;)I

    move-result p1

    return p1
.end method
