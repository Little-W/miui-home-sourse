.class public Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "FlexboxLayout.java"

# interfaces
.implements Lcom/google/android/flexbox/FlexItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/flexbox/FlexboxLayout;
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
            "Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;",
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

.field private mOrder:I

.field private mWrapBefore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1865
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams$1;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams$1;-><init>()V

    sput-object v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1624
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 1576
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    const/4 v1, 0x0

    .line 1581
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1586
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    const/4 v3, -0x1

    .line 1591
    iput v3, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    const/high16 v4, -0x40800000    # -1.0f

    .line 1596
    iput v4, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    .line 1601
    iput v3, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    .line 1606
    iput v3, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    const v5, 0xffffff

    .line 1611
    iput v5, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1616
    iput v5, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    .line 1626
    sget-object v6, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout:[I

    .line 1627
    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1628
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout_layout_order:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    .line 1629
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout_layout_flexGrow:I

    .line 1630
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    .line 1631
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout_layout_flexShrink:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    .line 1633
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout_layout_alignSelf:I

    .line 1634
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    .line 1635
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout_layout_flexBasisPercent:I

    .line 1636
    invoke-virtual {p1, p2, v0, v0, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    .line 1638
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout_layout_minWidth:I

    .line 1639
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    .line 1640
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout_layout_minHeight:I

    .line 1641
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    .line 1642
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout_layout_maxWidth:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1644
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout_layout_maxHeight:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    .line 1646
    sget p2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_Layout_layout_wrapBefore:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mWrapBefore:Z

    .line 1647
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v0, 0x0

    .line 1846
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 1576
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    const/4 v2, 0x0

    .line 1581
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1586
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    const/4 v2, -0x1

    .line 1591
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    const/high16 v3, -0x40800000    # -1.0f

    .line 1596
    iput v3, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    .line 1601
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    .line 1606
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    const v2, 0xffffff

    .line 1611
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1616
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    .line 1847
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    .line 1848
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    .line 1849
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    .line 1850
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    .line 1851
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    .line 1852
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    .line 1853
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    .line 1854
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1855
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    .line 1856
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mWrapBefore:Z

    .line 1857
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    .line 1858
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    .line 1859
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    .line 1860
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    .line 1861
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->height:I

    .line 1862
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->width:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1666
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 1576
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    const/4 p1, 0x0

    .line 1581
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1586
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    const/4 p1, -0x1

    .line 1591
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 1596
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    .line 1601
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    .line 1606
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    const p1, 0xffffff

    .line 1611
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1616
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 1674
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x1

    .line 1576
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    const/4 p1, 0x0

    .line 1581
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1586
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    const/4 p1, -0x1

    .line 1591
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 1596
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    .line 1601
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    .line 1606
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    const p1, 0xffffff

    .line 1611
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1616
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;)V
    .locals 2

    .line 1651
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x1

    .line 1576
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    const/4 v0, 0x0

    .line 1581
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1586
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    const/4 v0, -0x1

    .line 1591
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 1596
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    .line 1601
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    .line 1606
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    const v0, 0xffffff

    .line 1611
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1616
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    .line 1653
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    .line 1654
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    .line 1655
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    .line 1656
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    .line 1657
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    .line 1658
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    .line 1659
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    .line 1660
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    .line 1661
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    .line 1662
    iget-boolean p1, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mWrapBefore:Z

    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mWrapBefore:Z

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

    .line 1730
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    return v0
.end method

.method public getFlexBasisPercent()F
    .locals 1

    .line 1790
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    return v0
.end method

.method public getFlexGrow()F
    .locals 1

    .line 1709
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    return v0
.end method

.method public getFlexShrink()F
    .locals 1

    .line 1719
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1689
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->height:I

    return v0
.end method

.method public getMarginBottom()I
    .locals 1

    .line 1815
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    return v0
.end method

.method public getMarginLeft()I
    .locals 1

    .line 1800
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    return v0
.end method

.method public getMarginRight()I
    .locals 1

    .line 1810
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    return v0
.end method

.method public getMarginTop()I
    .locals 1

    .line 1805
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1770
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1760
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 1750
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1740
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 1699
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1679
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->width:I

    return v0
.end method

.method public isWrapBefore()Z
    .locals 1

    .line 1780
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mWrapBefore:Z

    return v0
.end method

.method public setMinHeight(I)V
    .locals 0

    .line 1755
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    .line 1745
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1825
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mOrder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1826
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexGrow:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1827
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexShrink:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1828
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mAlignSelf:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1829
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mFlexBasisPercent:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1830
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1831
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMinHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1832
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1833
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mMaxHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1834
    iget-boolean p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->mWrapBefore:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1835
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1836
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1837
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1838
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1839
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1840
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
