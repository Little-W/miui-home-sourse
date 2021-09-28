.class Lcom/miui/home/library/view/viewpager/ViewPager$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/view/viewpager/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;)I
    .locals 0

    .line 142
    iget p1, p1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    iget p2, p2, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;->position:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 139
    check-cast p1, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    check-cast p2, Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/library/view/viewpager/ViewPager$1;->compare(Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;Lcom/miui/home/library/view/viewpager/ViewPager$ItemInfo;)I

    move-result p1

    return p1
.end method
