.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$ThemeUtils$oHjNn9gRNdPhHMrM4x9F9GCpEqE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$ThemeUtils$oHjNn9gRNdPhHMrM4x9F9GCpEqE;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/launcher/common/-$$Lambda$ThemeUtils$oHjNn9gRNdPhHMrM4x9F9GCpEqE;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$ThemeUtils$oHjNn9gRNdPhHMrM4x9F9GCpEqE;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/common/-$$Lambda$ThemeUtils$oHjNn9gRNdPhHMrM4x9F9GCpEqE;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/ThemeUtils;->lambda$tellThemeLockWallpaperPath$461(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
