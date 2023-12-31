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

    .line 33
    new-instance v0, Lcom/miui/maml/util/IntentInfo$Type;

    const/4 v1, 0x0

    const-string v2, "STRING"

    invoke-direct {v0, v2, v1}, Lcom/miui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/util/IntentInfo$Type;->STRING:Lcom/miui/maml/util/IntentInfo$Type;

    .line 34
    new-instance v0, Lcom/miui/maml/util/IntentInfo$Type;

    const/4 v2, 0x1

    const-string v3, "INT"

    invoke-direct {v0, v3, v2}, Lcom/miui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/util/IntentInfo$Type;->INT:Lcom/miui/maml/util/IntentInfo$Type;

    .line 35
    new-instance v0, Lcom/miui/maml/util/IntentInfo$Type;

    const/4 v3, 0x2

    const-string v4, "LONG"

    invoke-direct {v0, v4, v3}, Lcom/miui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/util/IntentInfo$Type;->LONG:Lcom/miui/maml/util/IntentInfo$Type;

    .line 36
    new-instance v0, Lcom/miui/maml/util/IntentInfo$Type;

    const/4 v4, 0x3

    const-string v5, "FLOAT"

    invoke-direct {v0, v5, v4}, Lcom/miui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/util/IntentInfo$Type;->FLOAT:Lcom/miui/maml/util/IntentInfo$Type;

    .line 37
    new-instance v0, Lcom/miui/maml/util/IntentInfo$Type;

    const/4 v5, 0x4

    const-string v6, "DOUBLE"

    invoke-direct {v0, v6, v5}, Lcom/miui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/util/IntentInfo$Type;->DOUBLE:Lcom/miui/maml/util/IntentInfo$Type;

    .line 38
    new-instance v0, Lcom/miui/maml/util/IntentInfo$Type;

    const/4 v6, 0x5

    const-string v7, "BOOLEAN"

    invoke-direct {v0, v7, v6}, Lcom/miui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/util/IntentInfo$Type;->BOOLEAN:Lcom/miui/maml/util/IntentInfo$Type;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/miui/maml/util/IntentInfo$Type;

    .line 32
    sget-object v7, Lcom/miui/maml/util/IntentInfo$Type;->STRING:Lcom/miui/maml/util/IntentInfo$Type;

    aput-object v7, v0, v1

    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->INT:Lcom/miui/maml/util/IntentInfo$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->LONG:Lcom/miui/maml/util/IntentInfo$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->FLOAT:Lcom/miui/maml/util/IntentInfo$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->DOUBLE:Lcom/miui/maml/util/IntentInfo$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/maml/util/IntentInfo$Type;->BOOLEAN:Lcom/miui/maml/util/IntentInfo$Type;

    aput-object v1, v0, v6

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/util/IntentInfo$Type;
    .locals 1

    .line 32
    const-class v0, Lcom/miui/maml/util/IntentInfo$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/util/IntentInfo$Type;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/util/IntentInfo$Type;
    .locals 1

    .line 32
    sget-object v0, Lcom/miui/maml/util/IntentInfo$Type;->$VALUES:[Lcom/miui/maml/util/IntentInfo$Type;

    invoke-virtual {v0}, [Lcom/miui/maml/util/IntentInfo$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/util/IntentInfo$Type;

    return-object v0
.end method
