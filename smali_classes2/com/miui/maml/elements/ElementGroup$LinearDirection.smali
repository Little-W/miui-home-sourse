.class final enum Lcom/miui/maml/elements/ElementGroup$LinearDirection;
.super Ljava/lang/Enum;
.source "ElementGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/ElementGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LinearDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/elements/ElementGroup$LinearDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/elements/ElementGroup$LinearDirection;

.field public static final enum Horizontal:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

.field public static final enum None:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

.field public static final enum Vertical:Lcom/miui/maml/elements/ElementGroup$LinearDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1}, Lcom/miui/maml/elements/ElementGroup$LinearDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->None:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 37
    new-instance v0, Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    const/4 v2, 0x1

    const-string v3, "Horizontal"

    invoke-direct {v0, v3, v2}, Lcom/miui/maml/elements/ElementGroup$LinearDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->Horizontal:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 38
    new-instance v0, Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    const/4 v3, 0x2

    const-string v4, "Vertical"

    invoke-direct {v0, v4, v3}, Lcom/miui/maml/elements/ElementGroup$LinearDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->Vertical:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 35
    sget-object v4, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->None:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    aput-object v4, v0, v1

    sget-object v1, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->Horizontal:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->Vertical:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->$VALUES:[Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/elements/ElementGroup$LinearDirection;
    .locals 1

    .line 35
    const-class v0, Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/elements/ElementGroup$LinearDirection;
    .locals 1

    .line 35
    sget-object v0, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->$VALUES:[Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    invoke-virtual {v0}, [Lcom/miui/maml/elements/ElementGroup$LinearDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    return-object v0
.end method
