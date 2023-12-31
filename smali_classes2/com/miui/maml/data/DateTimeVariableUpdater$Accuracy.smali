.class public final enum Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;
.super Ljava/lang/Enum;
.source "DateTimeVariableUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/DateTimeVariableUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Accuracy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

.field public static final enum Day:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

.field public static final enum Hour:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

.field public static final enum Minute:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

.field public static final enum Second:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 77
    new-instance v0, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    const/4 v1, 0x0

    const-string v2, "Day"

    invoke-direct {v0, v2, v1}, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->Day:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    .line 78
    new-instance v0, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    const/4 v2, 0x1

    const-string v3, "Hour"

    invoke-direct {v0, v3, v2}, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->Hour:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    .line 79
    new-instance v0, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    const/4 v3, 0x2

    const-string v4, "Minute"

    invoke-direct {v0, v4, v3}, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    .line 80
    new-instance v0, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    const/4 v4, 0x3

    const-string v5, "Second"

    invoke-direct {v0, v5, v4}, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->Second:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    .line 76
    sget-object v5, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->Day:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    aput-object v5, v0, v1

    sget-object v1, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->Hour:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->Second:Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->$VALUES:[Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;
    .locals 1

    .line 76
    const-class v0, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;
    .locals 1

    .line 76
    sget-object v0, Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->$VALUES:[Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    invoke-virtual {v0}, [Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/data/DateTimeVariableUpdater$Accuracy;

    return-object v0
.end method
