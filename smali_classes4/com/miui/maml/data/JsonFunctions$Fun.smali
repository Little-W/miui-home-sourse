.class final enum Lcom/miui/maml/data/JsonFunctions$Fun;
.super Ljava/lang/Enum;
.source "JsonFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/JsonFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Fun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/data/JsonFunctions$Fun;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/data/JsonFunctions$Fun;

.field public static final enum INVALID:Lcom/miui/maml/data/JsonFunctions$Fun;

.field public static final enum IS_JSON_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

.field public static final enum IS_JSON_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

.field public static final enum JSON_ARRAY_GET_INDEX:Lcom/miui/maml/data/JsonFunctions$Fun;

.field public static final enum JSON_ARRAY_LENGTH:Lcom/miui/maml/data/JsonFunctions$Fun;

.field public static final enum JSON_GET_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

.field public static final enum JSON_GET_BOOLEAN:Lcom/miui/maml/data/JsonFunctions$Fun;

.field public static final enum JSON_GET_INT:Lcom/miui/maml/data/JsonFunctions$Fun;

.field public static final enum JSON_GET_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

.field public static final enum JSON_GET_STRING:Lcom/miui/maml/data/JsonFunctions$Fun;

.field public static final enum JSON_NEW_JSON_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

.field public static final enum JSON_NEW_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

.field public static final enum JSON_OBJECT_EQUALS:Lcom/miui/maml/data/JsonFunctions$Fun;

.field public static final enum TO_JSON_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

.field public static final enum TO_STR_FROM_JSON:Lcom/miui/maml/data/JsonFunctions$Fun;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 18
    new-instance v0, Lcom/miui/maml/data/JsonFunctions$Fun;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lcom/miui/maml/data/JsonFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/JsonFunctions$Fun;->INVALID:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 20
    new-instance v0, Lcom/miui/maml/data/JsonFunctions$Fun;

    const/4 v2, 0x1

    const-string v3, "JSON_GET_STRING"

    invoke-direct {v0, v3, v2}, Lcom/miui/maml/data/JsonFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_STRING:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 21
    new-instance v0, Lcom/miui/maml/data/JsonFunctions$Fun;

    const/4 v3, 0x2

    const-string v4, "JSON_GET_BOOLEAN"

    invoke-direct {v0, v4, v3}, Lcom/miui/maml/data/JsonFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_BOOLEAN:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 22
    new-instance v0, Lcom/miui/maml/data/JsonFunctions$Fun;

    const/4 v4, 0x3

    const-string v5, "JSON_GET_INT"

    invoke-direct {v0, v5, v4}, Lcom/miui/maml/data/JsonFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_INT:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 23
    new-instance v0, Lcom/miui/maml/data/JsonFunctions$Fun;

    const/4 v5, 0x4

    const-string v6, "JSON_GET_OBJECT"

    invoke-direct {v0, v6, v5}, Lcom/miui/maml/data/JsonFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 24
    new-instance v0, Lcom/miui/maml/data/JsonFunctions$Fun;

    const/4 v6, 0x5

    const-string v7, "JSON_GET_ARRAY"

    invoke-direct {v0, v7, v6}, Lcom/miui/maml/data/JsonFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 26
    new-instance v0, Lcom/miui/maml/data/JsonFunctions$Fun;

    const/4 v7, 0x6

    const-string v8, "JSON_ARRAY_GET_INDEX"

    invoke-direct {v0, v8, v7}, Lcom/miui/maml/data/JsonFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_ARRAY_GET_INDEX:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 28
    new-instance v0, Lcom/miui/maml/data/JsonFunctions$Fun;

    const/4 v8, 0x7

    const-string v9, "JSON_NEW_OBJECT"

    invoke-direct {v0, v9, v8}, Lcom/miui/maml/data/JsonFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_NEW_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 29
    new-instance v0, Lcom/miui/maml/data/JsonFunctions$Fun;

    const/16 v9, 0x8

    const-string v10, "JSON_NEW_JSON_ARRAY"

    invoke-direct {v0, v10, v9}, Lcom/miui/maml/data/JsonFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_NEW_JSON_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 31
    new-instance v0, Lcom/miui/maml/data/JsonFunctions$Fun;

    const/16 v10, 0x9

    const-string v11, "JSON_ARRAY_LENGTH"

    invoke-direct {v0, v11, v10}, Lcom/miui/maml/data/JsonFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_ARRAY_LENGTH:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 32
    new-instance v0, Lcom/miui/maml/data/JsonFunctions$Fun;

    const/16 v11, 0xa

    const-string v12, "JSON_OBJECT_EQUALS"

    invoke-direct {v0, v12, v11}, Lcom/miui/maml/data/JsonFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_OBJECT_EQUALS:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 34
    new-instance v0, Lcom/miui/maml/data/JsonFunctions$Fun;

    const/16 v12, 0xb

    const-string v13, "TO_JSON_OBJECT"

    invoke-direct {v0, v13, v12}, Lcom/miui/maml/data/JsonFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/JsonFunctions$Fun;->TO_JSON_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 35
    new-instance v0, Lcom/miui/maml/data/JsonFunctions$Fun;

    const/16 v13, 0xc

    const-string v14, "TO_STR_FROM_JSON"

    invoke-direct {v0, v14, v13}, Lcom/miui/maml/data/JsonFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/JsonFunctions$Fun;->TO_STR_FROM_JSON:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 37
    new-instance v0, Lcom/miui/maml/data/JsonFunctions$Fun;

    const/16 v14, 0xd

    const-string v15, "IS_JSON_OBJECT"

    invoke-direct {v0, v15, v14}, Lcom/miui/maml/data/JsonFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/JsonFunctions$Fun;->IS_JSON_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 38
    new-instance v0, Lcom/miui/maml/data/JsonFunctions$Fun;

    const/16 v15, 0xe

    const-string v14, "IS_JSON_ARRAY"

    invoke-direct {v0, v14, v15}, Lcom/miui/maml/data/JsonFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/JsonFunctions$Fun;->IS_JSON_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/miui/maml/data/JsonFunctions$Fun;

    .line 17
    sget-object v14, Lcom/miui/maml/data/JsonFunctions$Fun;->INVALID:Lcom/miui/maml/data/JsonFunctions$Fun;

    aput-object v14, v0, v1

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_STRING:Lcom/miui/maml/data/JsonFunctions$Fun;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_BOOLEAN:Lcom/miui/maml/data/JsonFunctions$Fun;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_INT:Lcom/miui/maml/data/JsonFunctions$Fun;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_ARRAY_GET_INDEX:Lcom/miui/maml/data/JsonFunctions$Fun;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_NEW_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_NEW_JSON_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

    aput-object v1, v0, v9

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_ARRAY_LENGTH:Lcom/miui/maml/data/JsonFunctions$Fun;

    aput-object v1, v0, v10

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_OBJECT_EQUALS:Lcom/miui/maml/data/JsonFunctions$Fun;

    aput-object v1, v0, v11

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->TO_JSON_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    aput-object v1, v0, v12

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->TO_STR_FROM_JSON:Lcom/miui/maml/data/JsonFunctions$Fun;

    aput-object v1, v0, v13

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->IS_JSON_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->IS_JSON_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

    aput-object v1, v0, v15

    sput-object v0, Lcom/miui/maml/data/JsonFunctions$Fun;->$VALUES:[Lcom/miui/maml/data/JsonFunctions$Fun;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/data/JsonFunctions$Fun;
    .locals 1

    .line 17
    const-class v0, Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/data/JsonFunctions$Fun;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/data/JsonFunctions$Fun;
    .locals 1

    .line 17
    sget-object v0, Lcom/miui/maml/data/JsonFunctions$Fun;->$VALUES:[Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-virtual {v0}, [Lcom/miui/maml/data/JsonFunctions$Fun;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/data/JsonFunctions$Fun;

    return-object v0
.end method
