.class public final enum Lcom/miui/home/settings/DeleteAppInfo$FromType;
.super Ljava/lang/Enum;
.source "DeleteAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/settings/DeleteAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FromType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/settings/DeleteAppInfo$FromType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/settings/DeleteAppInfo$FromType;

.field public static final enum MIUI_AUTO_PARSE:Lcom/miui/home/settings/DeleteAppInfo$FromType;

.field public static final enum XML:Lcom/miui/home/settings/DeleteAppInfo$FromType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 76
    new-instance v0, Lcom/miui/home/settings/DeleteAppInfo$FromType;

    const/4 v1, 0x0

    const-string v2, "XML"

    invoke-direct {v0, v2, v1}, Lcom/miui/home/settings/DeleteAppInfo$FromType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/settings/DeleteAppInfo$FromType;->XML:Lcom/miui/home/settings/DeleteAppInfo$FromType;

    .line 77
    new-instance v0, Lcom/miui/home/settings/DeleteAppInfo$FromType;

    const/4 v2, 0x1

    const-string v3, "MIUI_AUTO_PARSE"

    invoke-direct {v0, v3, v2}, Lcom/miui/home/settings/DeleteAppInfo$FromType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/settings/DeleteAppInfo$FromType;->MIUI_AUTO_PARSE:Lcom/miui/home/settings/DeleteAppInfo$FromType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/home/settings/DeleteAppInfo$FromType;

    .line 75
    sget-object v3, Lcom/miui/home/settings/DeleteAppInfo$FromType;->XML:Lcom/miui/home/settings/DeleteAppInfo$FromType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/miui/home/settings/DeleteAppInfo$FromType;->MIUI_AUTO_PARSE:Lcom/miui/home/settings/DeleteAppInfo$FromType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/home/settings/DeleteAppInfo$FromType;->$VALUES:[Lcom/miui/home/settings/DeleteAppInfo$FromType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/settings/DeleteAppInfo$FromType;
    .locals 1

    .line 75
    const-class v0, Lcom/miui/home/settings/DeleteAppInfo$FromType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/settings/DeleteAppInfo$FromType;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/settings/DeleteAppInfo$FromType;
    .locals 1

    .line 75
    sget-object v0, Lcom/miui/home/settings/DeleteAppInfo$FromType;->$VALUES:[Lcom/miui/home/settings/DeleteAppInfo$FromType;

    invoke-virtual {v0}, [Lcom/miui/home/settings/DeleteAppInfo$FromType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/settings/DeleteAppInfo$FromType;

    return-object v0
.end method
