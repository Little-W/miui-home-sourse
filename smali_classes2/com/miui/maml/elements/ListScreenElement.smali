.class public Lcom/miui/maml/elements/ListScreenElement;
.super Lcom/miui/maml/elements/ElementGroup;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ListScreenElement$ListData;,
        Lcom/miui/maml/elements/ListScreenElement$Column;,
        Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;,
        Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;,
        Lcom/miui/maml/elements/ListScreenElement$ListItemElement;
    }
.end annotation


# static fields
.field private static ACC:D = -800.0

.field private static DATA_TYPE_BITMAP:Ljava/lang/String; = "bitmap"

.field private static DATA_TYPE_DOUBLE:Ljava/lang/String; = "double"

.field private static DATA_TYPE_FLOAT:Ljava/lang/String; = "float"

.field private static DATA_TYPE_INTEGER:Ljava/lang/String; = "int"

.field private static DATA_TYPE_INTEGER1:Ljava/lang/String; = "integer"

.field private static DATA_TYPE_LONG:Ljava/lang/String; = "long"

.field private static DATA_TYPE_STRING:Ljava/lang/String; = "string"

.field private static final LOG_TAG:Ljava/lang/String; = "ListScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "List"


# instance fields
.field protected mAttrDataBinders:Lcom/miui/maml/elements/AttrDataBinders;

.field private mBottomIndex:I

.field private mCachedItemCount:I

.field private mClearOnFinish:Z

.field private mColumnsInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentIndex:I

.field private mCurrentTime:J

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexedVariables:[Lcom/miui/maml/data/IndexedVariable;

.field private mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

.field private mIsChildScroll:Z

.field private mIsScroll:Z

.field private mIsUpDirection:Z

.field private mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

.field private mItemCount:I

.field private mLastTime:J

.field protected mListData:Lcom/miui/maml/elements/ListScreenElement$ListData;

.field private final mLock:Ljava/lang/Object;

.field private mMaxHeight:Lcom/miui/maml/data/Expression;

.field private mMoving:Z

.field private mOffsetX:D

.field private mOffsetY:D

.field private mPressed:Z

.field private mReuseIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

.field private mSelectedId:I

.field private mSelectedIdVar:Lcom/miui/maml/data/IndexedVariable;

.field private mSpeed:D

.field private mStartAnimTime:J

.field private mStartAnimY:F

.field private mTopIndex:I

.field private mTouchStartX:D

.field private mTouchStartY:D

.field private mVisibleItemCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 3

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 63
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    .line 67
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    .line 68
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    .line 69
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    const/4 p2, -0x1

    .line 98
    iput p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 333
    iget-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    if-eqz p2, :cond_5

    const/4 p2, 0x1

    .line 338
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ListScreenElement;->setClip(Z)V

    .line 340
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "maxHeight"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mMaxHeight:Lcom/miui/maml/data/Expression;

    const-string v0, "clearOnFinish"

    .line 341
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mClearOnFinish:Z

    const-string v0, "data"

    .line 343
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 348
    invoke-static {v0}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->createColumnsInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    .line 349
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 353
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/miui/maml/data/IndexedVariable;

    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexedVariables:[Lcom/miui/maml/data/IndexedVariable;

    const-string v0, "AttrDataBinders"

    .line 355
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 360
    new-instance v1, Lcom/miui/maml/elements/AttrDataBinders;

    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mContextVariables:Lcom/miui/maml/data/ContextVariables;

    invoke-direct {v1, v0, v2}, Lcom/miui/maml/elements/AttrDataBinders;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/ContextVariables;)V

    iput-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mAttrDataBinders:Lcom/miui/maml/elements/AttrDataBinders;

    const-string v0, "Data"

    .line 362
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 364
    new-instance v0, Lcom/miui/maml/elements/ListScreenElement$ListData;

    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v0, p1, v1, p0}, Lcom/miui/maml/elements/ListScreenElement$ListData;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/elements/ListScreenElement;)V

    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mListData:Lcom/miui/maml/elements/ListScreenElement$ListData;

    :cond_0
    const-string p1, "scrollbar"

    .line 367
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ListScreenElement;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p1

    .line 368
    instance-of v0, p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    if-eqz v0, :cond_1

    .line 369
    move-object v0, p1

    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 370
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    sget-object v1, Lcom/miui/maml/elements/ScreenElement$AlignV;->TOP:Lcom/miui/maml/elements/ScreenElement$AlignV;

    iput-object v1, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 371
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ListScreenElement;->removeElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 372
    iget-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ListScreenElement;->addElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 375
    :cond_1
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".selectedId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-direct {p1, v0, v1, p2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedIdVar:Lcom/miui/maml/data/IndexedVariable;

    return-void

    :cond_2
    const-string p1, "ListScreenElement"

    const-string p2, "no attr data binder"

    .line 357
    invoke-static {p1, p2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List: no attr data binder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, "ListScreenElement"

    const-string p2, "invalid item data"

    .line 350
    invoke-static {p1, p2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List: invalid item data"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p1, "ListScreenElement"

    const-string p2, "no data"

    .line 345
    invoke-static {p1, p2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List: no data"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string p1, "ListScreenElement"

    const-string p2, "no item"

    .line 334
    invoke-static {p1, p2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "List: no item"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_BITMAP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_INTEGER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_INTEGER1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_DOUBLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_LONG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement;->DATA_TYPE_FLOAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/maml/elements/ListScreenElement;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ListScreenElement;->addColumn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private addColumn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, -0x1

    .line 619
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 621
    iget-object v4, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v4, v4, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-gez v0, :cond_3

    return-void

    .line 630
    :cond_3
    iget-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 631
    :try_start_0
    array-length v1, p2

    .line 632
    iget-object v3, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_6

    const/4 v4, 0x0

    if-ge v2, v1, :cond_4

    .line 636
    aget-object v4, p2, v2

    .line 638
    :cond_4
    iget-object v5, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 639
    invoke-virtual {v5, v0, v4}, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->setData(ILjava/lang/Object;)V

    .line 640
    iget-object v4, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    iget v4, v4, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    if-ltz v4, :cond_5

    .line 641
    invoke-direct {p0, v2}, Lcom/miui/maml/elements/ListScreenElement;->getItem(I)Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    if-ge v3, v1, :cond_7

    .line 645
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    .line 646
    aget-object v4, p2, v3

    aput-object v4, v2, v0

    .line 647
    invoke-virtual {p0, v2}, Lcom/miui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 649
    :cond_7
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->clearEmptyRowLocked()V

    .line 650
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->requestUpdate()V

    return-void

    :catchall_0
    move-exception p2

    .line 650
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_8
    :goto_4
    return-void
.end method

.method private bindDataLocked(Lcom/miui/maml/elements/ListScreenElement$ListItemElement;II)V
    .locals 4

    if-ltz p3, :cond_3

    .line 675
    iget v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    if-lt p3, v0, :cond_0

    goto :goto_1

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    iget-object v0, v0, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    .line 681
    invoke-virtual {p1, p3}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->setDataIndex(I)V

    .line 682
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    iput p2, v1, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .line 683
    iget-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    const/4 v1, 0x0

    iput-boolean v1, p2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mNeedRebind:Z

    int-to-float p2, p3

    .line 686
    iget-object p3, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {p3}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result p3

    mul-float/2addr p2, p3

    float-to-double p2, p2

    double-to-float p2, p2

    float-to-double p2, p2

    .line 687
    invoke-virtual {p1, p2, p3}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->setY(D)V

    .line 690
    iget-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 691
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p3

    iget-object p3, p3, Lcom/miui/maml/ScreenContext;->mContextVariables:Lcom/miui/maml/data/ContextVariables;

    :goto_0
    if-ge v1, p2, :cond_1

    .line 693
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v2, v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    aget-object v3, v0, v1

    invoke-virtual {p3, v2, v3}, Lcom/miui/maml/data/ContextVariables;->setVar(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 697
    :cond_1
    iget-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mAttrDataBinders:Lcom/miui/maml/elements/AttrDataBinders;

    if-eqz p2, :cond_2

    .line 698
    invoke-virtual {p2, p1}, Lcom/miui/maml/elements/AttrDataBinders;->bind(Lcom/miui/maml/elements/ElementGroup;)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "ListScreenElement"

    const-string p2, "invalid item data"

    .line 676
    invoke-static {p1, p2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkVisibility()V
    .locals 7

    .line 703
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 704
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 705
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 706
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 707
    invoke-virtual {v4}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    move-result v5

    if-ltz v5, :cond_0

    .line 708
    iget v6, p0, Lcom/miui/maml/elements/ListScreenElement;->mTopIndex:I

    if-lt v5, v6, :cond_0

    iget v6, p0, Lcom/miui/maml/elements/ListScreenElement;->mBottomIndex:I

    if-gt v5, v6, :cond_0

    .line 709
    invoke-virtual {v4}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->isVisible()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    .line 710
    invoke-virtual {v4, v5}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->show(Z)V

    goto :goto_1

    .line 713
    :cond_0
    invoke-virtual {v4}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 714
    invoke-virtual {v4, v2}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->show(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 718
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearEmptyRowLocked()V
    .locals 7

    .line 656
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 658
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    .line 659
    iget-object v2, v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    .line 661
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_2
    if-nez v4, :cond_2

    goto :goto_3

    .line 670
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/ListScreenElement;->removeItemLocked(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method private getItem(I)Lcom/miui/maml/elements/ListScreenElement$ListItemElement;
    .locals 4

    .line 792
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    .line 793
    :try_start_0
    iget v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 796
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    iget v2, v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    if-ltz v2, :cond_1

    .line 798
    iget-object v3, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v3}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 799
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    :cond_1
    if-ltz v2, :cond_2

    if-eqz v1, :cond_3

    .line 801
    invoke-virtual {v1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    move-result v3

    if-eq v3, p1, :cond_3

    .line 802
    :cond_2
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->getUseableElementIndex()I

    move-result v2

    .line 803
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    if-eqz v1, :cond_3

    .line 804
    invoke-virtual {v1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    move-result v3

    if-gez v3, :cond_3

    .line 805
    invoke-virtual {v1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->reset()V

    :cond_3
    if-eqz v1, :cond_5

    .line 809
    invoke-virtual {v1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    move-result v3

    if-ne v3, p1, :cond_4

    iget-object v3, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    iget-boolean v3, v3, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mNeedRebind:Z

    if-eqz v3, :cond_5

    .line 810
    :cond_4
    invoke-direct {p0, v1, v2, p1}, Lcom/miui/maml/elements/ListScreenElement;->bindDataLocked(Lcom/miui/maml/elements/ListScreenElement$ListItemElement;II)V

    .line 812
    :cond_5
    monitor-exit v0

    return-object v1

    .line 794
    :cond_6
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 812
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getUseableElementIndex()I
    .locals 4

    .line 769
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 774
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 781
    :goto_0
    iget-boolean v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    if-eqz v2, :cond_2

    .line 782
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 784
    :cond_2
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    return v0
.end method

.method private moveTo(D)V
    .locals 5

    .line 844
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v2}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    cmpg-double v0, p1, v0

    const-wide/16 v1, 0x0

    if-gez v0, :cond_0

    .line 845
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    move-result p1

    iget p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v0

    mul-float/2addr p2, v0

    sub-float/2addr p1, p2

    float-to-double p1, p1

    .line 846
    iput-wide v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    :cond_0
    const-wide/16 v3, 0x0

    cmpl-double v0, p1, v3

    if-lez v0, :cond_1

    .line 850
    iput-wide v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    move-wide p1, v3

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    double-to-float v1, p1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ElementGroup;->setY(D)V

    neg-double p1, p1

    .line 853
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v0

    float-to-double v0, v0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    iget p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 854
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x1

    .line 853
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mTopIndex:I

    .line 855
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    move-result p1

    iget-object p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {p2}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    iget p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mTopIndex:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mBottomIndex:I

    .line 856
    iget p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mTopIndex:I

    :goto_0
    iget p2, p0, Lcom/miui/maml/elements/ListScreenElement;->mBottomIndex:I

    if-gt p1, p2, :cond_2

    .line 857
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ListScreenElement;->getItem(I)Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 859
    :cond_2
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->checkVisibility()V

    .line 860
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->updateScorllBar()V

    return-void
.end method

.method private removeItemLocked(I)V
    .locals 7

    if-ltz p1, :cond_5

    .line 738
    iget v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    if-lt p1, v0, :cond_0

    goto/16 :goto_2

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 742
    iget v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 743
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ListScreenElement;->descale(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ListScreenElement;->setActualHeight(D)V

    .line 744
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    .line 747
    iget-object v4, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v4}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 748
    invoke-virtual {v4}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getDataIndex()I

    move-result v5

    if-ne v5, p1, :cond_1

    const/4 v3, -0x1

    .line 751
    invoke-virtual {v4, v3}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->setDataIndex(I)V

    const-wide v5, -0x10000000000001L

    .line 752
    invoke-virtual {v4, v5, v6}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->setY(D)V

    .line 753
    invoke-virtual {v4, v1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->show(Z)V

    move v3, v2

    goto :goto_1

    :cond_1
    if-le v5, p1, :cond_2

    add-int/lit8 v5, v5, -0x1

    .line 755
    invoke-virtual {v4, v5}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->setDataIndex(I)V

    int-to-float v5, v5

    .line 756
    iget-object v6, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v6}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->setY(D)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    .line 760
    iget-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 761
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->getY()F

    move-result v0

    float-to-double v0, v0

    invoke-direct {p0, v0, v1}, Lcom/miui/maml/elements/ListScreenElement;->moveTo(D)V

    .line 762
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->requestUpdate()V

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method private resetInner()V
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 865
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->show(Z)V

    .line 867
    :cond_0
    iput-boolean v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mMoving:Z

    .line 868
    iput-boolean v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mIsScroll:Z

    .line 869
    iput-boolean v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    const-wide/16 v0, -0x1

    .line 870
    iput-wide v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    const-wide/16 v0, 0x0

    .line 871
    iput-wide v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mSpeed:D

    return-void
.end method

.method private setVariables()V
    .locals 7

    .line 722
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 724
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    .line 725
    iget-object v3, v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    sget-object v4, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->BITMAP:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    if-eq v3, v4, :cond_2

    .line 726
    iget-object v3, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexedVariables:[Lcom/miui/maml/data/IndexedVariable;

    aget-object v4, v3, v1

    if-nez v4, :cond_0

    .line 727
    new-instance v4, Lcom/miui/maml/data/IndexedVariable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/miui/maml/elements/ListScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/maml/elements/ListScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 728
    invoke-virtual {v6}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v6

    iget-object v6, v6, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    iget-object v2, v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v2}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->isNumber()Z

    move-result v2

    invoke-direct {v4, v5, v6, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    aput-object v4, v3, v1

    .line 730
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 731
    :try_start_0
    iget-object v3, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexedVariables:[Lcom/miui/maml/data/IndexedVariable;

    aget-object v3, v3, v1

    iget v4, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    iget-object v5, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    iget-object v4, v4, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    aget-object v4, v4, v1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 732
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .line 839
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 840
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimY:F

    return-void
.end method

.method private updateScorllBar()V
    .locals 11

    .line 817
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIsScroll:Z

    if-eqz v0, :cond_2

    .line 818
    iget v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 819
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    move-result v2

    float-to-double v2, v2

    div-double v4, v2, v0

    const/4 v6, 0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v4, v7

    if-ltz v9, :cond_0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 826
    :cond_0
    iget-object v9, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v9}, Lcom/miui/maml/elements/ElementGroup;->getY()F

    move-result v9

    float-to-double v9, v9

    sub-double v0, v2, v0

    div-double v0, v9, v0

    cmpl-double v9, v0, v7

    if-lez v9, :cond_1

    move-wide v0, v7

    .line 830
    :cond_1
    iget-object v9, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    sub-double/2addr v7, v4

    mul-double/2addr v7, v2

    mul-double/2addr v7, v0

    double-to-float v0, v7

    float-to-double v0, v0

    invoke-virtual {v9, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 831
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    mul-double/2addr v2, v4

    double-to-float v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->setHeight(D)V

    .line 832
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v0

    if-eq v0, v6, :cond_2

    .line 833
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mScrollBar:Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v0, v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->show(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public varargs addItem([Ljava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 425
    :cond_0
    array-length v0, p1

    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    const-string p1, "ListScreenElement"

    const-string v0, "invalid item data count"

    .line 426
    invoke-static {p1, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 429
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 431
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->validate(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "ListScreenElement"

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid item data type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    new-instance v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {v2, p1}, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    iget p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    .line 441
    iget p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 442
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    move-result p1

    float-to-double v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ListScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ListScreenElement;->setActualHeight(D)V

    .line 443
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->getHeight()F

    move-result p1

    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mMaxHeight:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0, v1}, Lcom/miui/maml/elements/ListScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ListScreenElement;->scale(D)F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mVisibleItemCount:I

    .line 444
    iget p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mVisibleItemCount:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mCachedItemCount:I

    .line 446
    iget-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {p1}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 447
    iget v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mCachedItemCount:I

    if-ge p1, v1, :cond_4

    .line 448
    new-instance v1, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    iget-object v2, v2, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mNode:Lorg/w3c/dom/Element;

    iget-object v3, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    iget-object v3, v3, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 449
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v2, v1}, Lcom/miui/maml/elements/ElementGroup;->addElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 451
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    iput p1, v2, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    .line 452
    iget v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    iput v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 453
    invoke-virtual {v1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->init()V

    const/4 v2, -0x1

    .line 454
    iput v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 456
    iget v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    invoke-direct {p0, v1, p1, v2}, Lcom/miui/maml/elements/ListScreenElement;->bindDataLocked(Lcom/miui/maml/elements/ListScreenElement$ListItemElement;II)V

    .line 457
    iget-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->requestUpdate()V

    return-void

    :catchall_0
    move-exception p1

    .line 459
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected doTick(J)V
    .locals 10

    .line 598
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->doTick(J)V

    .line 600
    iget-wide v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    iget-boolean v4, p0, Lcom/miui/maml/elements/ListScreenElement;->mPressed:Z

    if-nez v4, :cond_3

    sub-long/2addr p1, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 602
    iget-wide v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mSpeed:D

    sget-wide v2, Lcom/miui/maml/elements/ListScreenElement;->ACC:D

    long-to-double p1, p1

    mul-double v4, v2, p1

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    add-double/2addr v4, v0

    const-wide/16 v8, 0x0

    cmpg-double v4, v4, v8

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    mul-double/2addr v0, p1

    div-double/2addr v0, v6

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    mul-double/2addr v2, p1

    mul-double/2addr v2, p1

    const-wide p1, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, p1

    add-double/2addr v0, v2

    .line 605
    iput-wide v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetY:D

    .line 606
    iget p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimY:F

    float-to-double p1, p1

    iget-boolean v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetY:D

    neg-double v0, v0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetY:D

    :goto_0
    add-double/2addr p1, v0

    .line 607
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ListScreenElement;->moveTo(D)V

    goto :goto_2

    .line 603
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->resetInner()V

    .line 609
    :goto_2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->requestUpdate()V

    :cond_3
    return-void
.end method

.method public findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;
    .locals 3

    .line 566
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_0
    iget v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    iget v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    if-ge v1, v2, :cond_0

    .line 568
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;

    iget v1, v1, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    if-ltz v1, :cond_0

    .line 570
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v2}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 571
    invoke-virtual {v1, p1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 573
    monitor-exit v0

    return-object v1

    .line 577
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 577
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public finish()V
    .locals 1

    .line 397
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->finish()V

    .line 398
    iget-boolean v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mClearOnFinish:Z

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->removeAllItems()V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mListData:Lcom/miui/maml/elements/ListScreenElement$ListData;

    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {v0}, Lcom/miui/maml/elements/ListScreenElement$ListData;->finish()V

    :cond_1
    return-void
.end method

.method public getColumnsInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;",
            ">;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mColumnsInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeight()F
    .locals 3

    .line 560
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mMaxHeight:Lcom/miui/maml/data/Expression;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->getHeight()F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mMaxHeight:Lcom/miui/maml/data/Expression;

    .line 561
    invoke-virtual {p0, v1}, Lcom/miui/maml/elements/ListScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ListScreenElement;->scale(D)F

    move-result v1

    .line 560
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    return v0
.end method

.method public init()V
    .locals 3

    .line 408
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 409
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->resetInner()V

    .line 410
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ElementGroup;->setY(D)V

    .line 411
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ListScreenElement;->descale(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ListScreenElement;->setActualHeight(D)V

    const/4 v0, -0x1

    .line 412
    iput v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 413
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedIdVar:Lcom/miui/maml/data/IndexedVariable;

    iget v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 414
    invoke-direct {p0}, Lcom/miui/maml/elements/ListScreenElement;->setVariables()V

    .line 415
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mListData:Lcom/miui/maml/elements/ListScreenElement$ListData;

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0}, Lcom/miui/maml/elements/ListScreenElement$ListData;->init()V

    :cond_0
    return-void
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;
    .locals 2

    .line 583
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Item"

    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    if-nez v0, :cond_0

    .line 586
    new-instance v0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v0, p1, v1}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    .line 588
    new-instance p1, Lcom/miui/maml/elements/ElementGroup;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {p1, v0, v1}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 589
    iget-object p1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    return-object p1

    .line 593
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p1

    return-object p1
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ListScreenElement;->isVisible()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 468
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 469
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 472
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x1

    packed-switch v4, :pswitch_data_0

    move-object/from16 v10, p1

    goto/16 :goto_5

    .line 545
    :pswitch_0
    iput-boolean v2, v0, Lcom/miui/maml/elements/ListScreenElement;->mPressed:Z

    .line 546
    iget-boolean v1, v0, Lcom/miui/maml/elements/ListScreenElement;->mMoving:Z

    if-eqz v1, :cond_1

    const-string v1, "cancel"

    .line 547
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ListScreenElement;->performAction(Ljava/lang/String;)V

    .line 548
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/ListScreenElement;->resetInner()V

    .line 549
    iput-wide v7, v0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    move-object/from16 v10, p1

    move v1, v9

    goto/16 :goto_6

    :cond_1
    move-object/from16 v10, p1

    goto/16 :goto_5

    .line 495
    :pswitch_1
    iget-boolean v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mMoving:Z

    if-eqz v4, :cond_7

    .line 496
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentTime:J

    float-to-double v7, v3

    .line 498
    iget-wide v10, v0, Lcom/miui/maml/elements/ListScreenElement;->mTouchStartY:D

    sub-double v10, v7, v10

    iput-wide v10, v0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetY:D

    float-to-double v10, v1

    .line 499
    iget-wide v12, v0, Lcom/miui/maml/elements/ListScreenElement;->mTouchStartX:D

    sub-double/2addr v10, v12

    iput-wide v10, v0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetX:D

    .line 501
    iget-boolean v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsScroll:Z

    if-nez v4, :cond_3

    iget-boolean v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    if-nez v4, :cond_3

    .line 502
    iget-wide v10, v0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetY:D

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    .line 503
    iget-wide v12, v0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetX:D

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    cmpl-double v4, v10, v14

    if-lez v4, :cond_2

    .line 504
    iget-boolean v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    if-nez v4, :cond_2

    cmpl-double v4, v10, v12

    if-ltz v4, :cond_2

    .line 505
    iput-boolean v9, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsScroll:Z

    goto :goto_0

    :cond_2
    cmpl-double v4, v12, v14

    if-lez v4, :cond_3

    .line 506
    iget-boolean v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsScroll:Z

    if-nez v4, :cond_3

    cmpg-double v4, v10, v12

    if-gez v4, :cond_3

    .line 507
    iput-boolean v9, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    .line 511
    :cond_3
    :goto_0
    iget-wide v10, v0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetY:D

    cmpg-double v4, v10, v5

    if-ltz v4, :cond_5

    iget-boolean v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsChildScroll:Z

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_2

    :cond_5
    :goto_1
    move v4, v9

    :goto_2
    iput-boolean v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsUpDirection:Z

    .line 513
    iget-boolean v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mIsScroll:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x3

    move-object/from16 v10, p1

    .line 514
    invoke-virtual {v10, v4}, Landroid/view/MotionEvent;->setAction(I)V

    const-string v4, "move"

    .line 515
    invoke-virtual {v0, v4}, Lcom/miui/maml/elements/ListScreenElement;->performAction(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v0, v1, v3}, Lcom/miui/maml/elements/ListScreenElement;->onActionMove(FF)V

    .line 518
    iget-wide v3, v0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetY:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget-wide v5, v0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentTime:J

    iget-wide v11, v0, Lcom/miui/maml/elements/ListScreenElement;->mLastTime:J

    sub-long/2addr v5, v11

    long-to-double v5, v5

    div-double/2addr v3, v5

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    iput-wide v3, v0, Lcom/miui/maml/elements/ListScreenElement;->mSpeed:D

    .line 520
    iget-object v1, v0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getY()F

    move-result v1

    float-to-double v3, v1

    iget-wide v5, v0, Lcom/miui/maml/elements/ListScreenElement;->mOffsetY:D

    add-double/2addr v3, v5

    .line 521
    invoke-direct {v0, v3, v4}, Lcom/miui/maml/elements/ListScreenElement;->moveTo(D)V

    .line 522
    iput-wide v7, v0, Lcom/miui/maml/elements/ListScreenElement;->mTouchStartY:D

    .line 523
    iget-wide v3, v0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentTime:J

    iput-wide v3, v0, Lcom/miui/maml/elements/ListScreenElement;->mLastTime:J

    goto :goto_3

    :cond_6
    move-object/from16 v10, p1

    :goto_3
    move v1, v9

    goto/16 :goto_6

    :cond_7
    move-object/from16 v10, p1

    goto/16 :goto_5

    :pswitch_2
    move-object/from16 v10, p1

    .line 529
    iput-boolean v2, v0, Lcom/miui/maml/elements/ListScreenElement;->mPressed:Z

    .line 530
    iget-boolean v1, v0, Lcom/miui/maml/elements/ListScreenElement;->mMoving:Z

    if-eqz v1, :cond_9

    const-string v1, "ListScreenElement"

    const-string v3, "unlock touch up"

    .line 531
    invoke-static {v1, v3}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "up"

    .line 532
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ListScreenElement;->performAction(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ListScreenElement;->onActionUp()V

    .line 535
    iget-wide v3, v0, Lcom/miui/maml/elements/ListScreenElement;->mSpeed:D

    const-wide/high16 v5, 0x4079000000000000L    # 400.0

    cmpg-double v1, v3, v5

    if-gez v1, :cond_8

    .line 536
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/ListScreenElement;->resetInner()V

    goto :goto_4

    .line 538
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/ListScreenElement;->startAnimation()V

    :goto_4
    move v1, v9

    goto :goto_6

    :pswitch_3
    move-object/from16 v10, p1

    .line 474
    invoke-virtual {v0, v1, v3}, Lcom/miui/maml/elements/ListScreenElement;->touched(FF)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 475
    iput-boolean v9, v0, Lcom/miui/maml/elements/ListScreenElement;->mMoving:Z

    .line 476
    iput-boolean v9, v0, Lcom/miui/maml/elements/ListScreenElement;->mPressed:Z

    const-string v4, "down"

    .line 477
    invoke-virtual {v0, v4}, Lcom/miui/maml/elements/ListScreenElement;->performAction(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0, v1, v3}, Lcom/miui/maml/elements/ListScreenElement;->onActionDown(FF)V

    .line 480
    iput-wide v7, v0, Lcom/miui/maml/elements/ListScreenElement;->mStartAnimTime:J

    .line 481
    iput-wide v5, v0, Lcom/miui/maml/elements/ListScreenElement;->mSpeed:D

    .line 482
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mLastTime:J

    .line 483
    iget-object v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v4}, Lcom/miui/maml/elements/ElementGroup;->getAbsoluteTop()F

    move-result v4

    sub-float v4, v3, v4

    iget-object v5, v0, Lcom/miui/maml/elements/ListScreenElement;->mItem:Lcom/miui/maml/elements/ListScreenElement$ListItemElement;

    invoke-virtual {v5}, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->getHeight()F

    move-result v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    .line 484
    iget-object v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedIdVar:Lcom/miui/maml/data/IndexedVariable;

    iget v5, v0, Lcom/miui/maml/elements/ListScreenElement;->mSelectedId:I

    int-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 485
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/ListScreenElement;->setVariables()V

    float-to-double v4, v1

    .line 487
    iput-wide v4, v0, Lcom/miui/maml/elements/ListScreenElement;->mTouchStartX:D

    float-to-double v3, v3

    .line 488
    iput-wide v3, v0, Lcom/miui/maml/elements/ListScreenElement;->mTouchStartY:D

    .line 490
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/ListScreenElement;->updateScorllBar()V

    move v1, v9

    goto :goto_6

    :cond_9
    :goto_5
    move v1, v2

    .line 555
    :goto_6
    invoke-super/range {p0 .. p1}, Lcom/miui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_a

    if-eqz v1, :cond_b

    iget-boolean v1, v0, Lcom/miui/maml/elements/ListScreenElement;->mInterceptTouch:Z

    if-eqz v1, :cond_b

    :cond_a
    move v2, v9

    :cond_b
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeAllItems()V
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->removeAllElements()V

    .line 385
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/elements/ElementGroup;->setY(D)V

    .line 386
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 387
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mIndexOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 388
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mReuseIndex:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, -0x1

    .line 389
    iput v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mCurrentIndex:I

    const/4 v1, 0x0

    .line 390
    iput v1, p0, Lcom/miui/maml/elements/ListScreenElement;->mItemCount:I

    .line 391
    invoke-virtual {p0}, Lcom/miui/maml/elements/ListScreenElement;->getHeight()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ListScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ListScreenElement;->setActualHeight(D)V

    .line 392
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
