.class Lmiui/home/lib/dialog/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/home/lib/dialog/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/home/lib/dialog/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mCancelable:Z

.field mCheckBoxMessage:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field mCheckedItems:[Z

.field mComment:Ljava/lang/CharSequence;

.field final mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;

.field mCustomTitleView:Landroid/view/View;

.field mEnableDialogImmersive:Z

.field mEnableEnterAnim:Z

.field mExtraButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/home/lib/dialog/AlertController$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHapticFeedbackEnabled:Z

.field mIcon:Landroid/graphics/drawable/Drawable;

.field mIconAttrId:I

.field mIconId:I

.field final mInflater:Landroid/view/LayoutInflater;

.field mIsChecked:Z

.field mIsCheckedColumn:Ljava/lang/String;

.field mIsMultiChoice:Z

.field mIsSingleChoice:Z

.field mItems:[Ljava/lang/CharSequence;

.field mLabelColumn:Ljava/lang/String;

.field mLiteVersion:I

.field mMessage:Ljava/lang/CharSequence;

.field mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mNegativeButtonText:Ljava/lang/CharSequence;

.field mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mNeutralButtonText:Ljava/lang/CharSequence;

.field mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mOnDialogShowAnimListener:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

.field mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field mOnPrepareListViewListener:Lmiui/home/lib/dialog/AlertController$AlertParams$OnPrepareListViewListener;

.field mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

.field mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mPositiveButtonText:Ljava/lang/CharSequence;

.field mPreferLandscape:Z

.field mTitle:Ljava/lang/CharSequence;

.field mView:Landroid/view/View;

.field mViewLayoutResId:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1931
    iput v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mIconId:I

    .line 1933
    iput v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mIconAttrId:I

    const/4 v1, -0x1

    .line 1958
    iput v1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mCheckedItem:I

    .line 1994
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    .line 1995
    iput-boolean v1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mCancelable:Z

    .line 1996
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v2

    xor-int/2addr v2, v1

    iput-boolean v2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mEnableDialogImmersive:Z

    .line 1997
    invoke-static {}, Lmiuix/device/DeviceUtils;->getMiuiLiteVersion()I

    move-result v2

    iput v2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mLiteVersion:I

    .line 1998
    iget v2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mLiteVersion:I

    if-gez v2, :cond_0

    .line 1999
    iput v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mLiteVersion:I

    .line 2001
    :cond_0
    iput-boolean v1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mEnableEnterAnim:Z

    .line 2002
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mExtraButtonList:Ljava/util/List;

    const-string v0, "layout_inflater"

    .line 2003
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private createListView(Lmiui/home/lib/dialog/AlertController;)V
    .locals 11

    .line 2066
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p1, Lmiui/home/lib/dialog/AlertController;->mListLayout:I

    const/4 v2, 0x0

    .line 2067
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ListView;

    .line 2070
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mIsMultiChoice:Z

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    .line 2071
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_0

    .line 2072
    new-instance v9, Lmiui/home/lib/dialog/AlertController$AlertParams$1;

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v3, p1, Lmiui/home/lib/dialog/AlertController;->mMultiChoiceItemLayout:I

    const v4, 0x1020014

    iget-object v5, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v0, v9

    move-object v1, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lmiui/home/lib/dialog/AlertController$AlertParams$1;-><init>(Lmiui/home/lib/dialog/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    goto :goto_1

    .line 2092
    :cond_0
    new-instance v9, Lmiui/home/lib/dialog/AlertController$AlertParams$2;

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v5, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lmiui/home/lib/dialog/AlertController$AlertParams$2;-><init>(Lmiui/home/lib/dialog/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Lmiui/home/lib/dialog/AlertController;)V

    goto :goto_1

    .line 2125
    :cond_1
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v0, :cond_2

    .line 2126
    iget v0, p1, Lmiui/home/lib/dialog/AlertController;->mSingleChoiceItemLayout:I

    goto :goto_0

    .line 2128
    :cond_2
    iget v0, p1, Lmiui/home/lib/dialog/AlertController;->mListItemLayout:I

    :goto_0
    move v3, v0

    .line 2131
    iget-object v4, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const v0, 0x1020014

    if-eqz v4, :cond_3

    .line 2132
    new-instance v9, Lmiui/home/lib/dialog/AlertController$AlertParams$3;

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mContext:Landroid/content/Context;

    new-array v5, v8, [Ljava/lang/String;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    new-array v10, v8, [I

    aput v0, v10, v6

    move-object v0, v9

    move-object v1, p0

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lmiui/home/lib/dialog/AlertController$AlertParams$3;-><init>(Lmiui/home/lib/dialog/AlertController$AlertParams;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_1

    .line 2144
    :cond_3
    iget-object v9, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v9, :cond_4

    goto :goto_1

    .line 2147
    :cond_4
    new-instance v9, Lmiui/home/lib/dialog/AlertController$CheckedItemAdapter;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v9, v1, v3, v0, v2}, Lmiui/home/lib/dialog/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 2151
    :goto_1
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mOnPrepareListViewListener:Lmiui/home/lib/dialog/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v0, :cond_5

    .line 2152
    invoke-interface {v0, v7}, Lmiui/home/lib/dialog/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 2158
    :cond_5
    iput-object v9, p1, Lmiui/home/lib/dialog/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 2159
    iget v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mCheckedItem:I

    iput v0, p1, Lmiui/home/lib/dialog/AlertController;->mCheckedItem:I

    .line 2161
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_6

    .line 2162
    new-instance v0, Lmiui/home/lib/dialog/AlertController$AlertParams$4;

    invoke-direct {v0, p0, p1}, Lmiui/home/lib/dialog/AlertController$AlertParams$4;-><init>(Lmiui/home/lib/dialog/AlertController$AlertParams;Lmiui/home/lib/dialog/AlertController;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2

    .line 2171
    :cond_6
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v0, :cond_7

    .line 2172
    new-instance v0, Lmiui/home/lib/dialog/AlertController$AlertParams$5;

    invoke-direct {v0, p0, v7, p1}, Lmiui/home/lib/dialog/AlertController$AlertParams$5;-><init>(Lmiui/home/lib/dialog/AlertController$AlertParams;Landroid/widget/ListView;Lmiui/home/lib/dialog/AlertController;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2185
    :cond_7
    :goto_2
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_8

    .line 2186
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2189
    :cond_8
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v0, :cond_9

    .line 2190
    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_3

    .line 2191
    :cond_9
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    .line 2192
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 2194
    :cond_a
    :goto_3
    iput-object v7, p1, Lmiui/home/lib/dialog/AlertController;->mListView:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method apply(Lmiui/home/lib/dialog/AlertController;)V
    .locals 4

    .line 2007
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2008
    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/AlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_0

    .line 2010
    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 2011
    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 2013
    :cond_1
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 2014
    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2016
    :cond_2
    iget v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_3

    .line 2017
    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/AlertController;->setIcon(I)V

    .line 2019
    :cond_3
    iget v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v0, :cond_4

    .line 2020
    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/AlertController;->setIcon(I)V

    .line 2023
    :cond_4
    :goto_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 2024
    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 2026
    :cond_5
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mComment:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 2027
    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/AlertController;->setComment(Ljava/lang/CharSequence;)V

    .line 2029
    :cond_6
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v2, -0x1

    .line 2030
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lmiui/home/lib/dialog/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 2033
    :cond_7
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    const/4 v2, -0x2

    .line 2034
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lmiui/home/lib/dialog/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 2037
    :cond_8
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    const/4 v2, -0x3

    .line 2038
    iget-object v3, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lmiui/home/lib/dialog/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 2041
    :cond_9
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mExtraButtonList:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 2042
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v1}, Lmiui/home/lib/dialog/AlertController;->access$302(Lmiui/home/lib/dialog/AlertController;Ljava/util/List;)Ljava/util/List;

    .line 2046
    :cond_a
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_b

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_b

    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_c

    .line 2047
    :cond_b
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertController$AlertParams;->createListView(Lmiui/home/lib/dialog/AlertController;)V

    .line 2049
    :cond_c
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 2050
    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/AlertController;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 2051
    :cond_d
    iget v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_e

    .line 2052
    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/AlertController;->setView(I)V

    .line 2055
    :cond_e
    :goto_1
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    .line 2056
    iget-boolean v1, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mIsChecked:Z

    invoke-virtual {p1, v1, v0}, Lmiui/home/lib/dialog/AlertController;->setCheckBox(ZLjava/lang/CharSequence;)V

    .line 2058
    :cond_f
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mHapticFeedbackEnabled:Z

    iput-boolean v0, p1, Lmiui/home/lib/dialog/AlertController;->mHapticFeedbackEnabled:Z

    .line 2059
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mEnableDialogImmersive:Z

    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/AlertController;->setEnableImmersive(Z)V

    .line 2060
    iget v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mLiteVersion:I

    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/AlertController;->setLiteVersion(I)V

    .line 2061
    iget-boolean v0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mPreferLandscape:Z

    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/AlertController;->setPreferLandscape(Z)V

    .line 2062
    iget-boolean p0, p0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mEnableEnterAnim:Z

    invoke-virtual {p1, p0}, Lmiui/home/lib/dialog/AlertController;->setEnableEnterAnim(Z)V

    return-void
.end method
