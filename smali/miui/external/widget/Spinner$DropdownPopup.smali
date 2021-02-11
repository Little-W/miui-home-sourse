.class Lmiui/external/widget/Spinner$DropdownPopup;
.super Lmiui/widget/ImmersionListPopupWindow;
.source "Spinner.java"

# interfaces
.implements Lmiui/external/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/external/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# static fields
.field private static final SCREEN_MARGIN_BOTTOM_PROPORTION:F = 0.1f

.field private static final SCREEN_MARGIN_TOP_PROPORTION:F = 0.1f


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field private mMarginScreen:I

.field private mOriginalHorizontalOffset:I

.field private final mVisibleRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lmiui/external/widget/Spinner;


# direct methods
.method public constructor <init>(Lmiui/external/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 987
    iput-object p1, p0, Lmiui/external/widget/Spinner$DropdownPopup;->this$0:Lmiui/external/widget/Spinner;

    .line 988
    invoke-direct {p0, p2}, Lmiui/widget/ImmersionListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 983
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lmiui/external/widget/Spinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    const/16 p2, 0x28

    .line 985
    iput p2, p0, Lmiui/external/widget/Spinner$DropdownPopup;->mMarginScreen:I

    .line 990
    new-instance p2, Lmiui/external/widget/Spinner$DropdownPopup$1;

    invoke-direct {p2, p0, p1}, Lmiui/external/widget/Spinner$DropdownPopup$1;-><init>(Lmiui/external/widget/Spinner$DropdownPopup;Lmiui/external/widget/Spinner;)V

    invoke-virtual {p0, p2}, Lmiui/external/widget/Spinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private changeWindowBackground(Landroid/view/View;F)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1100
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    return-void

    .line 1104
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1105
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1106
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "window"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 1107
    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const-string p1, "Spinner"

    const-string p2, "can\'t change window dim with null view"

    .line 1109
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getListViewHeight()I
    .locals 7

    .line 1033
    invoke-virtual {p0}, Lmiui/external/widget/Spinner$DropdownPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1034
    invoke-virtual {p0}, Lmiui/external/widget/Spinner$DropdownPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    move v2, v1

    move v3, v2

    .line 1035
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    const/4 v4, 0x0

    .line 1036
    invoke-virtual {p0}, Lmiui/external/widget/Spinner$DropdownPopup;->getContentView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    invoke-interface {v0, v2, v4, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1037
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1038
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1037
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 1039
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1042
    :cond_0
    invoke-virtual {p0}, Lmiui/external/widget/Spinner$DropdownPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1043
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1042
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1044
    invoke-virtual {p0}, Lmiui/external/widget/Spinner$DropdownPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v3, v0, 0x0

    :cond_1
    return v3
.end method

.method private initListView(II)V
    .locals 2

    .line 1020
    invoke-virtual {p0}, Lmiui/external/widget/Spinner$DropdownPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1021
    invoke-virtual {p0}, Lmiui/external/widget/Spinner$DropdownPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x1

    .line 1022
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1023
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 1024
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 1025
    iget-object p1, p0, Lmiui/external/widget/Spinner$DropdownPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-virtual {p1}, Lmiui/external/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    .line 1026
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1027
    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method private showWithAnchor(Landroid/view/View;FF)V
    .locals 7

    const/4 p3, 0x2

    .line 1121
    new-array v0, p3, [I

    .line 1122
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    float-to-int p2, p2

    const/4 v1, 0x1

    .line 1124
    aget v2, v0, v1

    .line 1125
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 1126
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1127
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, p3

    const/4 p3, 0x0

    if-gt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    if-eqz v1, :cond_1

    .line 1130
    iget p2, p0, Lmiui/external/widget/Spinner$DropdownPopup;->mMarginScreen:I

    goto :goto_1

    .line 1132
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result p2

    iget v0, p0, Lmiui/external/widget/Spinner$DropdownPopup;->mMarginScreen:I

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lmiui/external/widget/Spinner$DropdownPopup;->getWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 1135
    :goto_1
    invoke-direct {p0}, Lmiui/external/widget/Spinner$DropdownPopup;->getListViewHeight()I

    move-result v0

    int-to-float v1, v2

    .line 1137
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v4

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    .line 1138
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    :cond_2
    int-to-float v0, v0

    add-float v2, v1, v0

    .line 1141
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v5, v6

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 1142
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v6

    sub-float/2addr v1, v0

    .line 1144
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    cmpg-float v0, v1, v0

    if-gez v0, :cond_4

    .line 1145
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v1, v0, v4

    .line 1146
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f4ccccc    # 0.79999995f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 1147
    invoke-virtual {p0, v0}, Lmiui/external/widget/Spinner$DropdownPopup;->setHeight(I)V

    :cond_4
    float-to-int v0, v1

    .line 1150
    invoke-virtual {p0, p1, p3, p2, v0}, Lmiui/external/widget/Spinner$DropdownPopup;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .line 1010
    iget-object v0, p0, Lmiui/external/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontalOriginalOffset()I
    .locals 1

    .line 1167
    iget v0, p0, Lmiui/external/widget/Spinner$DropdownPopup;->mOriginalHorizontalOffset:I

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isVisibleToUser(Landroid/view/View;)Z
    .locals 1

    .line 1157
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/external/widget/Spinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1004
    invoke-super {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1005
    iput-object p1, p0, Lmiui/external/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1

    const-string p1, "Spinner"

    const-string v0, "setHorizontalOffset do nothing"

    .line 1182
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHorizontalOriginalOffset(I)V
    .locals 0

    .line 1162
    iput p1, p0, Lmiui/external/widget/Spinner$DropdownPopup;->mOriginalHorizontalOffset:I

    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1016
    iput-object p1, p0, Lmiui/external/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    const-string p1, "Spinner"

    const-string v0, "setVerticalOffset do nothing"

    .line 1187
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public show(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1051
    invoke-virtual {p0, p1, p2, v0, v0}, Lmiui/external/widget/Spinner$DropdownPopup;->show(IIFF)V

    return-void
.end method

.method public show(IIFF)V
    .locals 3

    .line 1056
    invoke-virtual {p0}, Lmiui/external/widget/Spinner$DropdownPopup;->isShowing()Z

    move-result v0

    const/4 v1, 0x2

    .line 1058
    invoke-virtual {p0, v1}, Lmiui/external/widget/Spinner$DropdownPopup;->setInputMethodMode(I)V

    .line 1059
    iget-object v1, p0, Lmiui/external/widget/Spinner$DropdownPopup;->this$0:Lmiui/external/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p3, p4}, Lmiui/external/widget/Spinner$DropdownPopup;->show(Landroid/view/View;Landroid/view/ViewGroup;FF)V

    .line 1060
    invoke-direct {p0, p1, p2}, Lmiui/external/widget/Spinner$DropdownPopup;->initListView(II)V

    if-eqz v0, :cond_0

    return-void

    .line 1071
    :cond_0
    iget-object p3, p0, Lmiui/external/widget/Spinner$DropdownPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-virtual {p3}, Lmiui/external/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 1073
    new-instance p4, Lmiui/external/widget/Spinner$DropdownPopup$2;

    invoke-direct {p4, p0, p1, p2}, Lmiui/external/widget/Spinner$DropdownPopup$2;-><init>(Lmiui/external/widget/Spinner$DropdownPopup;II)V

    .line 1084
    invoke-virtual {p3, p4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1085
    new-instance p1, Lmiui/external/widget/Spinner$DropdownPopup$3;

    invoke-direct {p1, p0, p4}, Lmiui/external/widget/Spinner$DropdownPopup$3;-><init>(Lmiui/external/widget/Spinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, p1}, Lmiui/external/widget/Spinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_1
    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;FF)V
    .locals 0

    .line 1114
    invoke-virtual {p0, p1, p2}, Lmiui/external/widget/Spinner$DropdownPopup;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1115
    invoke-direct {p0, p1, p3, p4}, Lmiui/external/widget/Spinner$DropdownPopup;->showWithAnchor(Landroid/view/View;FF)V

    .line 1116
    invoke-virtual {p0}, Lmiui/external/widget/Spinner$DropdownPopup;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    const p2, 0x3e99999a    # 0.3f

    invoke-direct {p0, p1, p2}, Lmiui/external/widget/Spinner$DropdownPopup;->changeWindowBackground(Landroid/view/View;F)V

    :cond_0
    return-void
.end method
