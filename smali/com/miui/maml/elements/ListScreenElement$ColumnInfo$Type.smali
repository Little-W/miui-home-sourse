.class public final enum Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;
.super Ljava/lang/Enum;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum BITMAP:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum DOUBLE:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum FLOAT:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum INTEGER:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum LONG:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public static final enum STRING:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 176
    new-instance v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->STRING:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 177
    new-instance v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const-string v1, "BITMAP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->BITMAP:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 178
    new-instance v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const-string v1, "INTEGER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 179
    new-instance v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const-string v1, "DOUBLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 180
    new-instance v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const-string v1, "LONG"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 181
    new-instance v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const-string v1, "FLOAT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    const/4 v0, 0x6

    .line 175
    new-array v0, v0, [Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    sget-object v1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->STRING:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->BITMAP:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    aput-object v1, v0, v7

    sput-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->$VALUES:[Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;
    .locals 1

    .line 175
    const-class v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;
    .locals 1

    .line 175
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->$VALUES:[Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v0}, [Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    return-object v0
.end method


# virtual methods
.method public isNumber()Z
    .locals 1

    .line 184
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
