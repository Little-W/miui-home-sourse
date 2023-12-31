.class public final Lcom/miui/home/launcher/maml/ThemeFactory;
.super Ljava/lang/Object;
.source "ThemeFactory.kt"


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/maml/ThemeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/miui/home/launcher/maml/ThemeFactory;

    invoke-direct {v0}, Lcom/miui/home/launcher/maml/ThemeFactory;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/maml/ThemeFactory;->INSTANCE:Lcom/miui/home/launcher/maml/ThemeFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getTheme(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/maml/Theme;
    .locals 2

    const-string v0, "info"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    instance-of v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->addSource:I

    const/16 v1, 0x3f3

    if-ne v0, v1, :cond_1

    .line 22
    invoke-static {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetUtilities;->isMaMlClassicClock(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lcom/miui/home/launcher/maml/MaMlClockTheme;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/maml/MaMlClockTheme;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    check-cast v0, Lcom/miui/home/launcher/maml/Theme;

    return-object v0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->supportTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-static {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetUtilities;->isClock(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Lcom/miui/home/launcher/maml/MaMlClockTheme;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/maml/MaMlClockTheme;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    check-cast v0, Lcom/miui/home/launcher/maml/Theme;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
