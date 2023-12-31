.class public final synthetic Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectAdapter$cQU2JFoletsvvrgenri9S2QoPEc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

.field private final synthetic f$1:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;

.field private final synthetic f$2:Lcom/miui/home/launcher/AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;Lcom/miui/home/launcher/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectAdapter$cQU2JFoletsvvrgenri9S2QoPEc;->f$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectAdapter$cQU2JFoletsvvrgenri9S2QoPEc;->f$1:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;

    iput-object p3, p0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectAdapter$cQU2JFoletsvvrgenri9S2QoPEc;->f$2:Lcom/miui/home/launcher/AppInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectAdapter$cQU2JFoletsvvrgenri9S2QoPEc;->f$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectAdapter$cQU2JFoletsvvrgenri9S2QoPEc;->f$1:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectAdapter$cQU2JFoletsvvrgenri9S2QoPEc;->f$2:Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {v0, v1, p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->lambda$onBindViewHolder$1$AppCategorySelectAdapter(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;Lcom/miui/home/launcher/AppInfo;Landroid/view/View;)V

    return-void
.end method
