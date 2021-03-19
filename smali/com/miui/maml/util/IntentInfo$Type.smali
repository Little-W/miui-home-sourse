.class final enum Lcom/miui/maml/util/IntentInfo$Type;
.super Ljava/lang/Enum;
.source "IntentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/IntentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/util/IntentInfo$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/util/IntentInfo$Type;

.field public static final enum BOOLEAN:Lcom/miui/maml/util/IntentInfo$Type;

.field public static final enum DOUBLE:Lcom/miui/maml/util/IntentInfo$Type;

.field public static final enum FLOAT:Lcom/miui/maml/util/IntentInfo$Type;

.field public static final enum INT:Lcom/miui/maml/util/IntentInfo$Type;

.field public static final enum LONG:Lcom/miui/maml/util/IntentInfo$Type;

.field public static final enum STRING:Lcom/miui/maml/util/IntentInfo$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 34
    new-instance v0, Lcom/miui/maml/util/IntentInfo$Type;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/util/IntentInfo$Type;->STRING:Lcom/miui/maml/util/IntentInfo$Type;

    .line 35
    new-instance v0, Lcom/miui/maml/util/IntentInfo$Type;

    const-string v1, "INT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/util/IntentInfo$Type;->INT:Lcom/miui/maml/util/IntentInfo$Type;

    .line 36
    new-instance v0, Lcom/miui/maml/util/IntentInfo$Type;

    const-string v1, "LONG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/util/IntentInfo$Type;->LONG:Lcom/miui/maml/util/IntentInfo$Type;

    .line 37
    new-instance v0, Lcom/miui/maml/util/IntentInfo$Type;

    const-string v1, "FLOAT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/util/IntentInfo$Type;->FLOAT:Lcom/miui/maml/util/IntentInfo$Type;

    .line 38
    new-instance v0, Lcom/miui/maml/util/IntentInfo$Type;

    const-string v1, "DOUBLE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/util/IntentInfo$Type;->DOUBLE:Lcom/miui/maml/util/IntentInfo$Type;

    .line 39
    new-instance v0, Lcom/miui/maml/util/IntentInfo$Type;

    const-string v1, "BOOLEAN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/miui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/util/IntentInfo$Type;->BOOLEAN:Lcom/miui/maml/util/IntentInfo$Type;

    const/4 v0, 0x6

    .line 33
    new-array v0, v0, [Lcom/miui/maml/util/IntentInfo$Type;

    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->STRING:Lcom/miui/maml/util/IntentInfo$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->INT:Lcom/miui/maml/util/IntentInfo$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->LONG:Lcom/miui/maml/util/IntentInfo$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->FLOAT:Lcom/miui/maml/util/IntentInfo$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->DOUBLE:Lcom/miui/maml/util/IntentInfo$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->BOOLEAN:Lcom/miui/maml/util/IntentInfo$Type;

    aput-object v1, v0, v7

    sput-object v0, Lcom/miui/maml/util/IntentInfo$Type;->$VALUES:[Lcom/miui/maml/util/IntentInfo$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/util/IntentInfo$Type;
    .locals 1

    .line 33
    const-class v0, Lcom/miui/maml/util/IntentInfo$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/util/IntentInfo$Type;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/util/IntentInfo$Type;
    .locals 1

    .line 33
    sget-object v0, Lcom/miui/maml/util/IntentInfo$Type;->$VALUES:[Lcom/miui/maml/util/IntentInfo$Type;

    invoke-virtual {v0}, [Lcom/miui/maml/util/IntentInfo$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/util/IntentInfo$Type;

    return-object v0
.end method
