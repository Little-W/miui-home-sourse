.class final enum Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;
.super Ljava/lang/Enum;
.source "ModuleManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/module/ModuleManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

.field public static final enum LOAD_FAILED:Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

.field public static final enum LOAD_PROCESSING:Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

.field public static final enum LOAD_SUCCESS:Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

    const/4 v1, 0x0

    const-string v2, "LOAD_PROCESSING"

    invoke-direct {v0, v2, v1}, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;->LOAD_PROCESSING:Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

    .line 19
    new-instance v0, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

    const/4 v2, 0x1

    const-string v3, "LOAD_SUCCESS"

    invoke-direct {v0, v3, v2}, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;->LOAD_SUCCESS:Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

    .line 20
    new-instance v0, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

    const/4 v3, 0x2

    const-string v4, "LOAD_FAILED"

    invoke-direct {v0, v4, v3}, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;->LOAD_FAILED:Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

    .line 17
    sget-object v4, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;->LOAD_PROCESSING:Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

    aput-object v4, v0, v1

    sget-object v1, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;->LOAD_SUCCESS:Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;->LOAD_FAILED:Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;->$VALUES:[Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;
    .locals 1

    .line 17
    const-class v0, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;
    .locals 1

    .line 17
    sget-object v0, Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;->$VALUES:[Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/module/ModuleManagerCompat$Status;

    return-object v0
.end method
