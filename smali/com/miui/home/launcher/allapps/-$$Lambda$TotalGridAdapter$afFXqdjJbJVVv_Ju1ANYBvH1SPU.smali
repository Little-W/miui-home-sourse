.class public final synthetic Lcom/miui/home/launcher/allapps/-$$Lambda$TotalGridAdapter$afFXqdjJbJVVv_Ju1ANYBvH1SPU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/allapps/TotalGridAdapter;

.field private final synthetic f$1:Lcom/miui/home/launcher/AppInfo;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/allapps/TotalGridAdapter;Lcom/miui/home/launcher/AppInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$TotalGridAdapter$afFXqdjJbJVVv_Ju1ANYBvH1SPU;->f$0:Lcom/miui/home/launcher/allapps/TotalGridAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$TotalGridAdapter$afFXqdjJbJVVv_Ju1ANYBvH1SPU;->f$1:Lcom/miui/home/launcher/AppInfo;

    iput p3, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$TotalGridAdapter$afFXqdjJbJVVv_Ju1ANYBvH1SPU;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$TotalGridAdapter$afFXqdjJbJVVv_Ju1ANYBvH1SPU;->f$0:Lcom/miui/home/launcher/allapps/TotalGridAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$TotalGridAdapter$afFXqdjJbJVVv_Ju1ANYBvH1SPU;->f$1:Lcom/miui/home/launcher/AppInfo;

    iget p0, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$TotalGridAdapter$afFXqdjJbJVVv_Ju1ANYBvH1SPU;->f$2:I

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, p0, p1}, Lcom/miui/home/launcher/allapps/TotalGridAdapter;->lambda$new$0$TotalGridAdapter(Lcom/miui/home/launcher/AppInfo;ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method
