.class Lcom/miui/maml/elements/filament/FilamentManager$FilamentManagerHolder;
.super Ljava/lang/Object;
.source "FilamentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/filament/FilamentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilamentManagerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/maml/elements/filament/FilamentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/miui/maml/elements/filament/FilamentManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/filament/FilamentManager;-><init>(Lcom/miui/maml/elements/filament/FilamentManager$1;)V

    sput-object v0, Lcom/miui/maml/elements/filament/FilamentManager$FilamentManagerHolder;->INSTANCE:Lcom/miui/maml/elements/filament/FilamentManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
