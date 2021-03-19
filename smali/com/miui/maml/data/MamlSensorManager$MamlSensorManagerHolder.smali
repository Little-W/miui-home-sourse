.class Lcom/miui/maml/data/MamlSensorManager$MamlSensorManagerHolder;
.super Ljava/lang/Object;
.source "MamlSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/MamlSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MamlSensorManagerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/maml/data/MamlSensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/miui/maml/data/MamlSensorManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/maml/data/MamlSensorManager;-><init>(Lcom/miui/maml/data/MamlSensorManager$1;)V

    sput-object v0, Lcom/miui/maml/data/MamlSensorManager$MamlSensorManagerHolder;->INSTANCE:Lcom/miui/maml/data/MamlSensorManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
