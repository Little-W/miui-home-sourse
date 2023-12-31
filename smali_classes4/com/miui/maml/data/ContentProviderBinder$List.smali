.class Lcom/miui/maml/data/ContentProviderBinder$List;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "List"
.end annotation


# instance fields
.field private mList:Lcom/miui/maml/elements/ListScreenElement;

.field private mMaxCount:I

.field private mName:Ljava/lang/String;

.field private mRoot:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    .line 223
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    const-string v0, "maxCount"

    const v1, 0x7fffffff

    .line 224
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mMaxCount:I

    .line 225
    iput-object p2, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    return-void
.end method


# virtual methods
.method public fill(Landroid/database/Cursor;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    const-string v1, "ContentProviderBinder"

    if-nez v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    iget-object v2, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v0

    .line 234
    instance-of v2, v0, Lcom/miui/maml/elements/ListScreenElement;

    if-eqz v2, :cond_1

    .line 235
    check-cast v0, Lcom/miui/maml/elements/ListScreenElement;

    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    if-nez v0, :cond_2

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to find list: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ListScreenElement;->removeAllItems()V

    .line 243
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ListScreenElement;->getColumnsInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 245
    new-array v3, v2, [I

    .line 246
    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    move v6, v5

    .line 247
    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_3

    .line 249
    :try_start_0
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v7, v7, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    aput v7, v3, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal column:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    iget-object v0, v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 256
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 257
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 258
    iget v6, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mMaxCount:I

    if-le v1, v6, :cond_4

    move v1, v6

    :cond_4
    move v6, v5

    :goto_1
    if-ge v6, v1, :cond_d

    move v7, v5

    :goto_2
    if-ge v7, v2, :cond_c

    const/4 v8, 0x0

    .line 263
    aput-object v8, v4, v7

    .line 264
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    .line 265
    aget v9, v3, v7

    .line 266
    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_b

    .line 267
    sget-object v10, Lcom/miui/maml/data/ContentProviderBinder$2;->$SwitchMap$com$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    iget-object v11, v8, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v11}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const/4 v11, 0x5

    if-eq v10, v11, :cond_a

    const/4 v11, 0x6

    if-eq v10, v11, :cond_9

    .line 278
    sget-object v10, Lcom/miui/maml/data/ContentProviderBinder$2;->$SwitchMap$com$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    iget-object v8, v8, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v8}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v8

    aget v8, v10, v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_8

    const/4 v10, 0x2

    if-eq v8, v10, :cond_7

    const/4 v10, 0x3

    if-eq v8, v10, :cond_6

    const/4 v10, 0x4

    if-eq v8, v10, :cond_5

    goto :goto_3

    .line 289
    :cond_5
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    goto :goto_3

    .line 286
    :cond_6
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    goto :goto_3

    .line 283
    :cond_7
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v4, v7

    goto :goto_3

    .line 280
    :cond_8
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v4, v7

    goto :goto_3

    .line 272
    :cond_9
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    if-eqz v8, :cond_b

    .line 274
    array-length v9, v8

    invoke-static {v8, v5, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    aput-object v8, v4, v7

    goto :goto_3

    .line 269
    :cond_a
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    :cond_b
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 296
    :cond_c
    iget-object v7, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    invoke-virtual {v7, v4}, Lcom/miui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    .line 297
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_d
    return-void
.end method
