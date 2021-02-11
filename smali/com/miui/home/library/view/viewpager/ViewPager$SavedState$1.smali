.class final Lcom/miui/home/library/view/viewpager/ViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;
    .locals 2

    .line 1418
    new-instance v0, Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;
    .locals 1

    .line 1413
    new-instance v0, Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/library/view/viewpager/ViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;
    .locals 0

    .line 1423
    new-array p1, p1, [Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1410
    invoke-virtual {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager$SavedState$1;->newArray(I)[Lcom/miui/home/library/view/viewpager/ViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method
