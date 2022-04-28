.class public Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;
.super Ljava/lang/Object;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/ListScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;
    }
.end annotation


# instance fields
.field public mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public mVarName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ":"

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x0

    .line 192
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    sget-object p1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->STRING:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    goto :goto_1

    .line 196
    :cond_0
    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    sget-object p1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->BITMAP:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    goto :goto_1

    .line 198
    :cond_1
    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 200
    :cond_2
    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    sget-object p1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    goto :goto_1

    .line 202
    :cond_3
    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    sget-object p1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    goto :goto_1

    .line 204
    :cond_4
    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$600()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 205
    sget-object p1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    goto :goto_1

    .line 207
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "List: invalid item data type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_6
    :goto_0
    sget-object p1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    :goto_1
    return-void

    .line 190
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "List: invalid item data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createColumnsInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;",
            ">;"
        }
    .end annotation

    .line 233
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 235
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ","

    .line 236
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 237
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 238
    new-instance v4, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    invoke-direct {v4, v3}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public validate(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 215
    :cond_0
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$1;->$SwitchMap$com$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 227
    :pswitch_0
    instance-of p1, p1, Ljava/lang/Float;

    return p1

    .line 225
    :pswitch_1
    instance-of p1, p1, Ljava/lang/Long;

    return p1

    .line 223
    :pswitch_2
    instance-of p1, p1, Ljava/lang/Double;

    return p1

    .line 221
    :pswitch_3
    instance-of p1, p1, Ljava/lang/Integer;

    return p1

    .line 219
    :pswitch_4
    instance-of p1, p1, Landroid/graphics/Bitmap;

    return p1

    .line 217
    :pswitch_5
    instance-of p1, p1, Ljava/lang/String;

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
