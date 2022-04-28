.class public Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
.source "FlexboxLayoutManager.java"

# interfaces
.implements Lcom/google/android/flexbox/FlexItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/flexbox/FlexboxLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlignSelf:I

.field private mFlexBasisPercent:F

.field private mFlexGrow:F

.field private mFlexShrink:F

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMinHeight:I

.field private mMinWidth:I

.field private mWrapBefore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2822
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams$1;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams$1;-><init>()V

    sput-object v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2734
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 2556
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2561
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    const/4 p1, -0x1

    .line 2566
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 2571
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexBasisPercent:F

    const p1, 0xffffff

    .line 2586
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    .line 2591
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2730
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2556
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2561
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    const/4 p1, -0x1

    .line 2566
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 2571
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexBasisPercent:F

    const p1, 0xffffff

    .line 2586
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    .line 2591
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, -0x2

    .line 2804
    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    .line 2556
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2561
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    const/4 v0, -0x1

    .line 2566
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 2571
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexBasisPercent:F

    const v0, 0xffffff

    .line 2586
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    .line 2591
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    .line 2805
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    .line 2806
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    .line 2807
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    .line 2808
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexBasisPercent:F

    .line 2809
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    .line 2810
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    .line 2811
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    .line 2812
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    .line 2813
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mWrapBefore:Z

    .line 2814
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->bottomMargin:I

    .line 2815
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->leftMargin:I

    .line 2816
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    .line 2817
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->topMargin:I

    .line 2818
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->height:I

    .line 2819
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlignSelf()I
    .locals 1

    .line 2641
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    return v0
.end method

.method public getFlexBasisPercent()F
    .locals 1

    .line 2701
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexBasisPercent:F

    return v0
.end method

.method public getFlexGrow()F
    .locals 1

    .line 2620
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    return v0
.end method

.method public getFlexShrink()F
    .locals 1

    .line 2630
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 2610
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->height:I

    return v0
.end method

.method public getMarginBottom()I
    .locals 1

    .line 2726
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->bottomMargin:I

    return v0
.end method

.method public getMarginLeft()I
    .locals 1

    .line 2711
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->leftMargin:I

    return v0
.end method

.method public getMarginRight()I
    .locals 1

    .line 2721
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    return v0
.end method

.method public getMarginTop()I
    .locals 1

    .line 2716
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->topMargin:I

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 2681
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 2671
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 2661
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 2651
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 2600
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    return v0
.end method

.method public isWrapBefore()Z
    .locals 1

    .line 2691
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mWrapBefore:Z

    return v0
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 2676
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    return-void
.end method

.method public setMinHeight(I)V
    .locals 0

    .line 2666
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    .line 2656
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 2786
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2787
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2788
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2789
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexBasisPercent:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2790
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2791
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2792
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2793
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2794
    iget-boolean p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mWrapBefore:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2795
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2796
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->leftMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2797
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2798
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->topMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2799
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2800
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
